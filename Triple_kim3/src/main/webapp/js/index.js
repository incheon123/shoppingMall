
function createA(){
    let link = document.createElement("a");
    return link;
}

function creates1s2Img(addr){
    let img = document.createElement("img");
    img.src = addr
    img.className = "s1s2img";
    return img;
}
function changeImg(s1, s2_1, s2_2){
    let s1_img = document.getElementsByClassName("s1_img")
    let s2_arr = document.getElementsByClassName("s2_img")

    let s2_1_href = s2_arr[0]
    let s2_2_href = s2_arr[1]


    let temp1 = createA()
    temp1.href= "https://www.naver.com";
    temp1.appendChild(creates1s2Img("../imgResource/space.jpg"));
    s1_img[0].appendChild(temp1);

    let temp2 = createA();
    temp2.href= "https://www.naver.com";
    temp2.appendChild(creates1s2Img("../imgResource/space.jpg"));
    s2_1_href.appendChild(temp2);

    let temp3 = createA();
    temp3.href= "https://www.naver.com";
    temp3.appendChild(creates1s2Img("../imgResource/space.jpg"));
    s2_2_href.appendChild(temp3);
}
//임시로 호출합니다
changeImg();


/**
 * 작성자 : 2033011 _ 김택현 _ 23-10-08 _ AM:11:49
 * @returns 빈껍데기 div를 반환합니다
 */
function createDiv(){
    let div = document.createElement("div");
    
    return div;
}


/**
 * 작성자 : 2033011 _ 김택현 _ 23-10-08 _ AM:11:48
 * img src는 jsp에서 가져와서 적용한다
 * 추후에 href값을 변경하십시오
 * @returns img를 감싼 link태그를 반환합니다
 */
function createImg(){
    let img = document.createElement("img");
    //img.src = jsp에서 가져와서 적용한다
    img.className = "s3_img";

    let link = document.createElement("a");
    link.className = "s3_link";
    link.appendChild(img);
    link.href = "https://www.naver.com"

    return link;
}



/**
 * 작성자 : 2033011 _ 김택현 _ 23-10-08 _ AM:11:36
 * product_name 그리고 product_price를 가져와서 적용하면 됩니다.
 * @returns 프로덕트 정보를 담은 div를 반환합니다
 */
function createImgCont(){
    let div = createDiv();

    let pname = document.createElement("h3");
    pname.className = "s3_content_pname";
    pname.innerText = "product_name"

    let price = document.createElement("p");
    price.className = "s3_price";
    price.innerText = "63,000"

    div.appendChild(pname);
    div.appendChild(price);
    return div;
}


/**
 * 작성자 : 2033011 _ 김택현 _ 23-10-08 _ AM:11:50
 * @returns 이미지와 콘텐츠를 포함한 s3_product를 반환합니다
 */
function createProduct(){
    let div = createDiv();
    div.className = "s3_product";

    div.appendChild(createImg());
    div.appendChild(createImgCont());

    return div;
}


/**
 * createProduct 함수를 호출해서 상품 정보를 메인페이지에 뿌려줍니다.
 * @param {*} len 메인페이지에서 보여줄 상품의 개수
 */
function insertDivToMain(len = 35){
    let section = document.getElementsByClassName("s3_product_container")
    for(let i = 0; i < len; i++){
        section[0].appendChild(createProduct());
    }
}

insertDivToMain();