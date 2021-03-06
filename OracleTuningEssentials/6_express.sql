COMMENT ON TABLE DEV.ITEM  IS '상품';
    COMMENT ON COLUMN DEV.ITEM.ITEM_ID IS '상품ID' ;
    COMMENT ON COLUMN DEV.ITEM.ITEM_NM IS '상품명' ;
    COMMENT ON COLUMN DEV.ITEM.ITEM_TYPE_CD IS '상품구분코드' ;
    COMMENT ON COLUMN DEV.ITEM.SALE_YN IS '판매여부' ;
    COMMENT ON COLUMN DEV.ITEM.ITEM_DESC IS '상품설명' ;
    COMMENT ON COLUMN DEV.ITEM.REG_ID IS '등록자ID' ;
    COMMENT ON COLUMN DEV.ITEM.REG_DTS IS '등록일시' ;
    COMMENT ON COLUMN DEV.ITEM.MOD_ID IS '수정자ID' ;
    COMMENT ON COLUMN DEV.ITEM.MOD_DTS IS '수정일시' ;

COMMENT ON TABLE DEV.UITEM  IS '단품';
    COMMENT ON COLUMN DEV.UITEM.ITEM_ID IS '상품ID' ;
    COMMENT ON COLUMN DEV.UITEM.UITEM_ID IS '단품ID' ;
    COMMENT ON COLUMN DEV.UITEM.UITEM_NM IS '단품명' ;
    COMMENT ON COLUMN DEV.UITEM.SALE_YN IS '판매여부' ;
    COMMENT ON COLUMN DEV.UITEM.UITEM_DESC IS '단품설명' ;
    COMMENT ON COLUMN DEV.UITEM.REG_ID IS '등록자ID' ;
    COMMENT ON COLUMN DEV.UITEM.REG_DTS IS '등록일시' ;
    COMMENT ON COLUMN DEV.UITEM.MOD_ID IS '수정자ID' ;
    COMMENT ON COLUMN DEV.UITEM.MOD_DTS IS '수정일시' ;

COMMENT ON TABLE DEV.UITEM_PRICE  IS '단품가격';
    COMMENT ON COLUMN DEV.UITEM_PRICE.ITEM_ID IS '상품ID' ;
    COMMENT ON COLUMN DEV.UITEM_PRICE.UITEM_ID IS '단품ID' ;
    COMMENT ON COLUMN DEV.UITEM_PRICE.APPLY_DT IS '적용일자' ;
    COMMENT ON COLUMN DEV.UITEM_PRICE.SALE_PRICE IS '판매가' ;
    COMMENT ON COLUMN DEV.UITEM_PRICE.DISCOUNT_PRICE IS '할인가' ;
    COMMENT ON COLUMN DEV.UITEM_PRICE.COST_PRICE IS '원가' ;
    COMMENT ON COLUMN DEV.UITEM_PRICE.REG_ID IS '등록자ID' ;
    COMMENT ON COLUMN DEV.UITEM_PRICE.REG_DTS IS '등록일시' ;
    COMMENT ON COLUMN DEV.UITEM_PRICE.MOD_ID IS '수정자ID' ;
    COMMENT ON COLUMN DEV.UITEM_PRICE.MOD_DTS IS '수정일시' ;

COMMENT ON TABLE DEV.ORD  IS '주문';
    COMMENT ON COLUMN DEV.ORD.ORD_NO IS '주문번호' ;
    COMMENT ON COLUMN DEV.ORD.ORD_DT IS '주문일자' ;
    COMMENT ON COLUMN DEV.ORD.ORD_HMS IS '주문시간' ;
    COMMENT ON COLUMN DEV.ORD.SHOP_NO IS '매장번호' ;
    COMMENT ON COLUMN DEV.ORD.UPPER2 IS '대문자2자리' ;
    COMMENT ON COLUMN DEV.ORD.UPPER_CASE IS '대문자10자리' ;
    COMMENT ON COLUMN DEV.ORD.LOWER_CASE IS '소문자10자리' ;
    COMMENT ON COLUMN DEV.ORD.ALPHABET IS '대소문자' ;
    COMMENT ON COLUMN DEV.ORD.ALPHABET_NUMERIC IS '대소문자숫자' ;

COMMENT ON TABLE DEV.ORD_ITEM  IS '주문상품';
    COMMENT ON COLUMN DEV.ORD_ITEM.ORD_NO IS '주문번호' ;
    COMMENT ON COLUMN DEV.ORD_ITEM.ITEM_ID IS '상품번호' ;
    COMMENT ON COLUMN DEV.ORD_ITEM.ORD_ITEM_QTY IS '주문상품수량' ;
    COMMENT ON COLUMN DEV.ORD_ITEM.ORD_DT IS '주문일자' ;
    COMMENT ON COLUMN DEV.ORD_ITEM.ORD_HMS IS '주문시간' ;
    COMMENT ON COLUMN DEV.ORD_ITEM.UPPER2 IS '대문자2자리' ;
    COMMENT ON COLUMN DEV.ORD_ITEM.UPPER_CASE IS '대문자10자리' ;
    COMMENT ON COLUMN DEV.ORD_ITEM.LOWER_CASE IS '소문자10자리' ;
    COMMENT ON COLUMN DEV.ORD_ITEM.ALPHABET IS '대소문자' ;
    COMMENT ON COLUMN DEV.ORD_ITEM.ALPHABET_NUMERIC IS '대소문자숫자' ;

COMMENT ON TABLE DEV.SHOP IS '매장';
    COMMENT ON COLUMN DEV.SHOP.SHOP_NO IS '매장번호';
    COMMENT ON COLUMN DEV.SHOP.SHOP_NM IS '매장명';
    COMMENT ON COLUMN DEV.SHOP.ADDR IS '주소';
    COMMENT ON COLUMN DEV.SHOP.TEL IS '전화번호';
    COMMENT ON COLUMN DEV.SHOP.REG_ID IS '등록자ID';
    COMMENT ON COLUMN DEV.SHOP.REG_DTS IS '등록일시';
    COMMENT ON COLUMN DEV.SHOP.MOD_ID IS '수정자ID';
    COMMENT ON COLUMN DEV.SHOP.MOD_DTS IS '수정일시';

COMMENT ON TABLE DEV.COM_CD IS '공통코드';
    COMMENT ON COLUMN DEV.COM_CD.UNI_CD IS '통합코드';
    COMMENT ON COLUMN DEV.COM_CD.UNI_CD_NM IS '통합코드명';
    COMMENT ON COLUMN DEV.COM_CD.CL_UNI_CD IS '유형통합코드';
    COMMENT ON COLUMN DEV.COM_CD.SEQ IS '정렬순서';
    COMMENT ON COLUMN DEV.COM_CD.CD_DESC IS '코드설명';
    COMMENT ON COLUMN DEV.COM_CD.REG_ID IS '등록자ID';
    COMMENT ON COLUMN DEV.COM_CD.REG_DTS IS '등록일시';
    COMMENT ON COLUMN DEV.COM_CD.MOD_ID IS '수정자ID';
    COMMENT ON COLUMN DEV.COM_CD.MOD_DTS IS '수정일시';


