//
//  WebServiceCollection.swift
//  ChinmayCocoaPods
//
//  Created by Chinmay Patel.. on 28/05/21.
//  Copyright © 2020 Chinmay Patel. All rights reserved.
//

//import Alamofire


enum MainServices {
    
    case NormalLogin
    case SocialLogin
    case NormalSignup
    case NormalLogout
    case updateProfile
    case getCountry
    case getState
    case GetUserProfile
    case ForgotPassword
    case flightAirportSearch
    case VerifyOTP
    case oneWayFlightList
    case roundtripFlightList
    case FlightBaggage
    case FlightAirValidation
    case FlightTravelerList
    case AddTraveller
    case UpdateTravlerDetails
    case CalculateInstallment
    case FlightCancellationPolicy
    case GetPaymentCardList
    case AddPaymentCard
    case ChangePassword
    case FlightBooking
    case DeleteTraveler
    case TotalAvailablePoints
    case UserBookingList
    case PaymentHistory
    case ResendOTP
    case ResetPassword
    case SearchBooking
    case Subscription
    case RedeemedPoints
    case EarnedPoints
    case FlightFlexibleDayRate
    case CalenderPrice
    case AddLaytripPoints
    case BookingFeedback
    case CMSPageContent
    case GetLocation
    case GetCurrencyList
    case GetLangList
    case GetPredictedDate
    case ForceUpdate
    case SendTicket
    
    //vacations
    case VRSearchLocation
    case VRList
    case VRDetails
    case VRVerifyAvailability
    case VRBooking
    case VRCalender
    
    // Hotel
    case hotelSearch
    case hotelList
    case HotelDetail
    case HotelRoom
}

//extension MainServices: RequireType {
//    
//    
//    var baseURL: String {
//        return "http://app.staging.projectURL.com:4040"
//    }
//    
//    var version: String {
//        return "/v1/"
//    }
//
//    var path: String {
//        switch self {
//        case .NormalLogin:
//            return "auth/mobile-signin"
//        case .SocialLogin:
//            return "auth/social-login"
//        case .NormalSignup:
//            return "auth/signup"
//        case .NormalLogout:
//            if (defaults.string(forKey: UserDefaultValues.UserID.rawValue) != nil && defaults.string(forKey: UserDefaultValues.UserID.rawValue) != ""){
//                return "auth/logout/" + defaults.string(forKey: UserDefaultValues.UserID.rawValue)!
//            }else{
//                return "auth/logout/"
//            }
//        case .updateProfile:
//            return "auth/profile"
//        case .getCountry:
//            return "generic/country"
//        case .getState :
//            return "generic/country/"
//        case .GetUserProfile:
//            return "auth/profile"
//        case .ForgotPassword :
//            return "auth/forgot-password"
//        case .flightAirportSearch:
//            return "flight/mobile/search-airport/"
//        case .VerifyOTP :
//            return "auth/verify-otp"
//        case .oneWayFlightList:
//           return "flight/search-oneway-flight"
//        case .roundtripFlightList:
//            return "flight/search-roundtrip-flight"
//        case .FlightBaggage:
//            return "flight/baggage-details"
//        case .FlightAirValidation :
//            return "flight/air-revalidate"
//        case .FlightTravelerList :
//            return "traveler/list-traveler"
//        case .AddTraveller :
//            return "traveler"
//        case .UpdateTravlerDetails,.DeleteTraveler:
//            return "traveler/"
//        case .CalculateInstallment:
//            return "instalment/calculate-instalment"
//        case .FlightCancellationPolicy:
//            return "flight/cancellation-policy"
//        case .GetPaymentCardList, .AddPaymentCard:
//            return "payment"
//        case .ChangePassword:
//            return "auth/change-password"
//        case .FlightBooking:
//            return "flight/book"
//        case .TotalAvailablePoints:
//            return "laytrip-point/total-available-points"
//        case .UserBookingList:
//           return "booking/user-booking-list"
//        case .PaymentHistory:
//            return "booking/payment"
//        case .ResendOTP:
//            return "auth/resend-otp"
//        case .ResetPassword:
//            return "auth/reset-password/"
//        case .SearchBooking:
//            return "booking/booking-details/"
//        case .Subscription:
//            return "subscription"
//        case .RedeemedPoints:
//            return "laytrip-point/redeemed"
//        case .EarnedPoints:
//            return "laytrip-point/earned"
//        case .FlightFlexibleDayRate:
//            return "flight/flexible-day-rate"
//        case .CalenderPrice:
//            return "flight/calender-day-rate"
//        case .AddLaytripPoints:
//            return "laytrip-point/add"
//        case .BookingFeedback:
//            return "booking-feedback"
//        case .CMSPageContent:
//            return "cms/"
//        case .GetLocation:
//            return "generic/location"
//        case.GetCurrencyList:
//            return "currency"
//        case .GetLangList:
//            return "language"
//        case .GetPredictedDate:
//            return "flight/predicted-booking-date"
//        case .ForceUpdate:
//            return "app-version/force-update"
//        case .SendTicket:
//            return "booking/share-booking-detail"
//            
//            //vacation
//        case .VRSearchLocation:
//            return "vacation-rental/search-location"
//        case .VRList:
//            return "vacation-rental/availability"
//        case .VRDetails:
//            return "vacation-rental/details"
//        case .VRVerifyAvailability:
//            return "vacation-rental/verify-availability/"
//        case .VRBooking:
//            return "vacation-rental/booking"
//            
//            
//        //Hotel
//        case .hotelSearch:
//            return "hotel/search-location"
//        case .hotelList:
//            return "hotel/search"
//        case .HotelDetail:
//            return "hotel/detail"
//        case .HotelRoom:
//            return "hotel/rooms"
//        case .VRCalender:
//            return "vacation-rental/calender-day-rate"
//        
//        }
//    }
//    
//    var httpMethod: HTTPMethod {
//        switch self {
//        case .NormalLogin, .SocialLogin, .NormalSignup, .NormalLogout, .ForgotPassword ,.oneWayFlightList, .roundtripFlightList, .FlightBaggage, .FlightAirValidation, .AddTraveller, .CalculateInstallment, .FlightCancellationPolicy,.AddPaymentCard, .FlightBooking ,.ResetPassword, .FlightFlexibleDayRate,.CalenderPrice,.AddLaytripPoints,.BookingFeedback,.GetPredictedDate,.ForceUpdate,.VRList,.VRDetails,.VRVerifyAvailability,.VRBooking,.SendTicket,.hotelSearch,.hotelList,.HotelDetail,.HotelRoom,.VRCalender:
//            
//            return .post
//            
//        case .updateProfile, .UpdateTravlerDetails, .ChangePassword :
//            
//            return .put
//            
//        case .getState, .getCountry,.GetUserProfile, .flightAirportSearch, .FlightTravelerList, .GetPaymentCardList, .TotalAvailablePoints , .UserBookingList ,.PaymentHistory,.SearchBooking,.Subscription, .RedeemedPoints, .EarnedPoints,.CMSPageContent,.GetLocation,.GetCurrencyList,.GetLangList,.VRSearchLocation:
//            
//            return .get
//            
//        case .VerifyOTP ,.ResendOTP:
//            
//            return .patch
//            
//        case .DeleteTraveler :
//            
//            return .delete
//        
//        }
//    }
//    
//    var headers: HTTPHeaders? {
//        switch self
//        {
//        case .NormalLogin, .SocialLogin, .NormalSignup, .NormalLogout,.getState, .getCountry, .flightAirportSearch ,.ForgotPassword, .VerifyOTP, .CalculateInstallment, .FlightCancellationPolicy ,.ResendOTP ,.ResetPassword,.Subscription,.GetLocation,.GetLangList,.ForceUpdate,.VRSearchLocation,.hotelSearch,.hotelList:
//         
//            return ["Content-Type": "application/json"]
//            
//        case .updateProfile:
//            if (defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue) != nil && defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue) != "")
//            {
//                let str = "Bearer " + defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue)!
//                return ["Content-Type": "multipart/form-data", "Authorization" : str]
//                
//            }else{
//                return ["Content-Type": "multipart/form-data"]
//            }
//            
//        case .GetUserProfile:
//            if (defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue) != nil && defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue) != "")
//            {
//                let str = "Bearer " + defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue)!
//                return ["Authorization" : str]
//                
//            }else{
//                return ["Content-Type": "multipart/form-data"]
//            }
//            
//        case .AddTraveller, .UpdateTravlerDetails, .FlightTravelerList, .GetPaymentCardList, .AddPaymentCard ,.ChangePassword, .DeleteTraveler, .TotalAvailablePoints, .UserBookingList,.PaymentHistory,.SearchBooking,.RedeemedPoints,.EarnedPoints,.AddLaytripPoints,.BookingFeedback,.CMSPageContent,.GetCurrencyList,.SendTicket:
//            
//            if (defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue) != nil && defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue) != "")
//            {
//                let str = "Bearer " + defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue)!
//                return ["Content-Type": "application/json","Authorization" : str]
//            }else{
//                return [
//                    "Content-Type": "application/json"]
//            }
//            
//        case .oneWayFlightList, .roundtripFlightList ,.FlightBaggage,.FlightAirValidation, .FlightBooking,.FlightFlexibleDayRate,.CalenderPrice,.GetPredictedDate,.VRList,.VRDetails,.VRVerifyAvailability,.VRBooking,.VRCalender:
//            
//            if (defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue) != nil && defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue) != "")
//            {
//                let str = "Bearer " + defaults.string(forKey: UserDefaultValues.UserAccessToken.rawValue)!
//                    
//                    return [
//                        "Content-Type": "application/json",
//                        "language" : "en",
//                        "currency" : "USD",
//                        "Authorization" : str
//                    ]
//               
//            }else{
//                return [
//                    "Content-Type": "application/json",
//                    "language" : "en",
//                    "currency" : "USD",
//                ]
//            }
//            
//            
//        case .HotelDetail,.HotelRoom :
//            if (defaults.string(forKey: HotelUserDefaults.HotelToken.rawValue) != nil && defaults.string(forKey: HotelUserDefaults.HotelToken.rawValue) != "")
//            {
//                let str = defaults.string(forKey: HotelUserDefaults.HotelToken.rawValue)!
//                return ["Content-Type": "application/json","token" : str]
//            }else{
//                return [
//                    "Content-Type": "application/json"]
//            }
//            
//        }
//    }
//    
//    var url: URL {
//        switch self {
//        default:
//            return URL(string: self.baseURL + self.version +  self.path)!
//        }
//    }
//    
//    var encoding: ParameterEncoding {
//        switch self {
//       
//        default:
//            return JSONEncoding.default
//        }
//    }
//    
//}
