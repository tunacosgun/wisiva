<div class="d-none d-lg-block">
    @isset($category)
        <div class="box bg-color p-4 mb-4">
            <h5 class="mb-4">{{ $category->name }}</h5>
            @foreach ($category->subCategories as $subCategory)
                <div class="filter-item {{ !$loop->last ? 'mb-3' : '' }}">
                    <a href="{{ route('categories.sub-category', [$category->slug, $subCategory->slug] + request()->all()) }}"
                        class="text-dark">
                        <div class="row align-items-center g-3">
                            <div class="col">
                                {{ $subCategory->name }}
                            </div>
                            <div class="col-auto">
                                <i class="fa-solid fa-tag fa-rtl"></i>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    @endisset
</div>
<div class="offcanvas offcanvas-start" tabindex="-1" id="searchFillters" aria-labelledby="searchFilltersLabel">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="searchFilltersLabel">{{ translate('Kategoriler') }}</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        @isset($category)
            <div class="box bg-color p-4 mb-4">
                <h5 class="mb-4">{{ $category->name }}</h5>
                @foreach ($category->subCategories as $subCategory)
                    <div class="filter-item {{ !$loop->last ? 'mb-3' : '' }}">
                        <a href="{{ route('categories.sub-category', [$category->slug, $subCategory->slug] + request()->all()) }}"
                            class="text-dark">
                            <div class="row align-items-center g-3">
                                <div class="col">
                                    {{ $subCategory->name }}
                                </div>
                                <div class="col-auto">
                                    <i class="fa-solid fa-tag fa-rtl"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        @endisset
    </div>
</div>
