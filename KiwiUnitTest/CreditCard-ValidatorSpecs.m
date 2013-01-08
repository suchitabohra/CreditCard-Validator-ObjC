#import "Kiwi.h"
#import "CreditCard-Validator.h"

SPEC_BEGIN(CreditCard_ValidatorSpecs)

describe(@"CreditCard", ^{
    context(@"Check for CreditCard Type", ^{
        __block CreditCard_Validator *creditCard = nil;
        
        beforeEach(^{
            creditCard = [[CreditCard_Validator alloc] init];
        });
        
        it(@"should be a Unknown type", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"0000"]) should] equal:theValue(CreditCardTypeUnknown)];
        });
        
        it(@"should be Visa", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"4012"]) should] equal:theValue(CreditCardTypeVisa)];
        });
        
        it(@"should be MasterCard", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"5453"]) should] equal:theValue(CreditCardTypeMasterCard)];
        });
        
        it(@"should be Amex", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"3434"]) should] equal:theValue(CreditCardTypeAmex)];
        });
        
        pending(@"should be Amex", nil);

        pending(@"should be DinersClub", nil);
        
        pending(@"should be Discover", nil);
        
        pending(@"should be ELO", nil);
        
        pending(@"should be HiperCard", nil);
    });
});

SPEC_END
