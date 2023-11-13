require 'test_helper' # Include config element to this document

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of products' do
    get products_path

    assert_response :success
    assert_select '.product', 2
  end

  test 'render a detailed product page' do
    get product_path(products(:ps4))

    assert_response :success
    assert_select '.title', 'PS4 Fat'
    assert_select '.description', 'Good conditions, no scratch'
    assert_select '.price', '$150'
  end

  test 'render a new product form' do
    get new_product_path

    assert_response :success
    assert_select 'form'
  end

  test 'allow to create a new product' do
    post products_path, params: {
      product: {
        title: 'Xbox One Slim', 
        description: 'Brand New!', 
        price: '399.99'
      }
    }

    assert_equal flash[:notice], 'Your products has been create successfully'
    # assert_redirected_to products_path
  end

  test 'Does not allow to create a new product' do
    post products_path, params: {
      product: {
        title: '', 
        description: 'Brand New!', 
        price: '399.99'
      }
    }

    assert_response :unprocessable_entity
  end

  test 'render a edit product form' do
    get edit_product_path(products(:ps4))

    assert_response :success
    assert_select 'form'
  end

  test 'can delete a product' do
    assert_difference('Product.count', -1) do
      delete product_path(products(:ps4))
    end

    assert_redirected_to products_path
    assert_equal flash[:notice], 'Your product has been deleted successfully.'
  end

end