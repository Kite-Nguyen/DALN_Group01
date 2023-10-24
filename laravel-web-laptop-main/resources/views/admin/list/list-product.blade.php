@extends('admin.layout.master')
@section('content')
<div class="content-page">
    @if (session('success'))
        @include('layout.alert-success')
    @endif
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="d-flex flex-wrap flex-wrap align-items-center justify-content-between mb-4">
                    <div>
                        <h4 class="mb-3">Danh Sách Sản Phẩm</h4>
                    </div>
                    <a href="{{ route('admin.add-product') }}" class="btn btn-primary add-list"><i class="las la-plus mr-3"></i>Thêm sản phẩm</a>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="table-responsive rounded mb-3">
                    <table class="data-table table mb-0 tbl-server-info">
                        <thead class="bg-white text-uppercase">
                        <tr class="ligth ligth-data">
                            <th>
                                <div class="checkbox d-inline-block">
                                    <input type="checkbox" class="checkbox-input" id="checkbox1">
                                    <label for="checkbox1" class="mb-0"></label>
                                </div>
                            </th>
                            <th>Hình ảnh</th>
                            <th>Tên sản phẩm</th>
                            <th>Giá</th>
                            <th>Trạng thái</th>
                            <th>Tên thương hiệu</th>
                            <th>Số lượng</th>
                            <th>Hành động</th>
                        </tr>
                        </thead>
                        <tbody class="ligth-body">
                            @foreach ($list_product as $product)
                            <tr>
                                <td>
                                    <div class="checkbox d-inline-block">
                                        <input type="checkbox" class="checkbox-input" id="checkbox2">
                                        <label for="checkbox2" class="mb-0"></label>
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img 
                                        src="{{ asset('admin-assets/images/product') . '/' . $product->product_avatar }}" class="img-fluid avatar-70 mr-3" alt="image">
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div>
                                            {{ $product->product_name }}
                                        </div>
                                    </div> 
                                </td>
                                <td>{{ number_format($product->price) }} VNĐ</td>
                                <td>{{ $product->getStatusProduct() }}</td>
                                <td>{{ $product->brand_name }}</td>
                                <td>{{ $product->quantity }}</td>
                                <td>
                                    <div class="d-flex align-items-center list-action">
                                        <a class="badge badge-info mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="View"
                                           href="{{ route('admin.detail-product', ['product' => $product->product_id]) }}"><i class="ri-eye-line mr-0"></i></a>
                                        <a 
                                        class="badge bg-success mr-2" 
                                        data-toggle="tooltip" 
                                        data-placement="top"
                                        data-original-title="Edit"
                                        href="{{ route('admin.edit-product', ['product' => $product->product_id]) }}"><i class="ri-pencil-line mr-0"></i></a>
                                        <a class="badge bg-warning mr-2" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"
                                        onclick="return confirm('Bạn có chắc chắn muốn xóa mục này?')"
                                        href="{{route('admin.destroy', ['product' => $product->product_id])}}"><i class="ri-delete-bin-line mr-0"></i></a>
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- Page end  -->
    </div>

</div>

@endsection
