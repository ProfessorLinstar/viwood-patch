.class public Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# static fields
.field public static final INVALID_LCE_LIST:Ljava/util/List;

.field public static final REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;


# instance fields
.field public mActiveDataSubId:I

.field public mAllowedNetworkTypeReason:[I

.field public mAllowedNetworkTypeValue:[J

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mBackgroundCallState:[I

.field public mBarringInfo:Ljava/util/List;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCallDisconnectCause:[I

.field public mCallForwarding:[Z

.field public mCallIncomingNumber:[Ljava/lang/String;

.field public mCallNetworkType:[I

.field public mCallPreciseDisconnectCause:[I

.field public mCallQuality:[Landroid/telephony/CallQuality;

.field public mCallState:[I

.field public mCallStateLists:Ljava/util/ArrayList;

.field public mCarrierNetworkChangeState:[Z

.field public mCarrierPrivilegeStates:Ljava/util/List;

.field public mCarrierRoamingNtnAvailableServices:Ljava/util/List;

.field public mCarrierRoamingNtnEligible:[Z

.field public mCarrierRoamingNtnMode:[Z

.field public mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

.field public mCarrierServiceStates:Ljava/util/List;

.field public mCellIdentity:[Landroid/telephony/CellIdentity;

.field public mCellInfo:Ljava/util/ArrayList;

.field public mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

.field public final mContext:Landroid/content/Context;

.field public mDataActivationState:[I

.field public mDataActivity:[I

.field public mDataConnectionNetworkType:[I

.field public mDataConnectionState:[I

.field public mDataEnabledReason:[I

.field public mDefaultPhoneId:I

.field public mDefaultSubId:I

.field public mECBMDuration:[J

.field public mECBMReason:[I

.field public mEmergencyNumberList:Ljava/util/Map;

.field public mForegroundCallState:[I

.field public final mHandler:Landroid/os/Handler;

.field public mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

.field public mHasNotifySubscriptionInfoChangedOccurred:Z

.field public mImsReasonInfo:Ljava/util/List;

.field public mIsDataEnabled:[Z

.field public mIsSatelliteEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLinkCapacityEstimateLists:Ljava/util/List;

.field public final mListenLog:Landroid/util/LocalLog;

.field public final mLocalLog:Landroid/util/LocalLog;

.field public mMediaQualityStatus:Ljava/util/List;

.field public mMessageWaiting:[Z

.field public mNumPhones:I

.field public mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

.field public mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

.field public mPhoneCapability:Landroid/telephony/PhoneCapability;

.field public mPhysicalChannelConfigs:Ljava/util/List;

.field public final mPid:I

.field public mPreciseCallState:[Landroid/telephony/PreciseCallState;

.field public mPreciseDataConnectionStates:Ljava/util/List;

.field public mRadioPowerState:[I

.field public final mRecords:Ljava/util/ArrayList;

.field public final mRemoveList:Ljava/util/ArrayList;

.field public mRingingCallState:[I

.field public mSCBMDuration:[J

.field public mSCBMReason:[I

.field public mServiceState:[Landroid/telephony/ServiceState;

.field public mSignalStrength:[Landroid/telephony/SignalStrength;

.field public mSimultaneousCellularCallingSubIds:[I

.field public mSrvccState:[I

.field public mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

.field public mUserMobileDataState:[Z

.field public mVoiceActivationState:[I

.field public mWasSatelliteEnabledNotified:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$3UMmd1mMMJsuVDLHZhqGF3imArs(Lcom/android/server/TelephonyRegistry;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->lambda$notifyCarrierNetworkChange$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4bvuP5Bs7ZKNwT6ScH4S4unvn9I(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->lambda$checkCoarseLocationAccess$3(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FMzo0RXtfIG5vCO6h7DAMTZmjpQ(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->lambda$checkFineLocationAccess$2(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HpXJgx8CyWpN0VDoFM2cg_0XpI8(Lcom/android/server/TelephonyRegistry;)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->lambda$broadcastServiceStateChanged$1()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCellIdentity(Lcom/android/server/TelephonyRegistry;)[Landroid/telephony/CellIdentity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultSubId(Lcom/android/server/TelephonyRegistry;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecords(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultSubId(Lcom/android/server/TelephonyRegistry;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPossibleMissNotify(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPhoneIdFromSubId(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetTelephonyManager(Lcom/android/server/TelephonyRegistry;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleRemoveListLocked(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyCellLocationForSubscriber(Lcom/android/server/TelephonyRegistry;ILandroid/telephony/CellIdentity;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monMultiSimConfigChanged(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremove(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mvalidatePhoneId(Lcom/android/server/TelephonyRegistry;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smpii(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/telephony/LinkCapacityEstimate;

    new-instance v2, Landroid/telephony/LinkCapacityEstimate;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v4}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 430
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 504
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/TelephonyRegistry;->REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;

    const/16 v1, 0xd

    .line 506
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 505
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xe

    .line 508
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 507
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xc

    .line 510
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 509
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1a

    .line 512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 511
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1b

    .line 514
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 513
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1c

    .line 516
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 515
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1f

    .line 517
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x20

    .line 518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x21

    .line 520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 519
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x22

    .line 522
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 521
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x25

    .line 524
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 523
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x27

    .line 526
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 525
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    .locals 7

    .line 844
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 335
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    const/4 v1, -0x1

    .line 387
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 389
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    const/4 v2, 0x0

    .line 401
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 405
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 407
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 409
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 411
    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 416
    new-instance v3, Landroid/util/LocalLog;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 418
    new-instance v3, Landroid/util/LocalLog;

    invoke-direct {v3, v4}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    .line 435
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSimultaneousCellularCallingSubIds:[I

    .line 442
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 443
    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 452
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mPid:I

    .line 605
    new-instance v3, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 667
    new-instance v3, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 845
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 846
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 847
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 849
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    .line 851
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 852
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 853
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 854
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 855
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 856
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 857
    new-array p2, p1, [Landroid/telephony/ServiceState;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 858
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 859
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 860
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 861
    new-array p2, p1, [Landroid/telephony/SignalStrength;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 862
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 863
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 864
    new-array p2, p1, [Landroid/telephony/CellIdentity;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 865
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 866
    new-array p2, p1, [Landroid/telephony/PreciseCallState;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 867
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 868
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 869
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 870
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 871
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 872
    new-array p2, p1, [Landroid/telephony/CallQuality;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 873
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    .line 874
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 875
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 876
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 877
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 878
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 879
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 880
    new-array p2, p1, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 881
    new-array p2, p1, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 882
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 883
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 884
    new-array p2, p1, [Landroid/telephony/TelephonyDisplayInfo;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 885
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    .line 886
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 887
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 888
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 889
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 890
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:[I

    .line 891
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    .line 892
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    .line 893
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    .line 894
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    .line 895
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mECBMDuration:[J

    .line 896
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    .line 897
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mSCBMDuration:[J

    .line 898
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 899
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 900
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    .line 901
    new-array p2, p1, [Landroid/telephony/satellite/NtnSignalStrength;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    .line 902
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mIsSatelliteEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 903
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mWasSatelliteEnabledNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 906
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v0, v3, p2

    .line 907
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v0, v3, p2

    .line 908
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v1, v3, p2

    .line 909
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v0, v3, p2

    .line 910
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v0, v3, p2

    .line 911
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, p2

    .line 912
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, p2

    .line 913
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object v2, v3, p2

    .line 914
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v0, v3, p2

    .line 915
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v0, v3, p2

    .line 916
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v0, v3, p2

    .line 917
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object v2, v3, p2

    .line 918
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 919
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v3, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 920
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput v1, v3, p2

    .line 921
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput v1, v3, p2

    .line 922
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput v1, v3, p2

    .line 923
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v5

    aput-object v5, v3, p2

    .line 924
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v3, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 925
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 926
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v0, v3, p2

    .line 927
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v5

    aput-object v5, v3, p2

    .line 928
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v0, v3, p2

    .line 929
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v0, v3, p2

    .line 930
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v0, v3, p2

    .line 931
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance v5, Landroid/telephony/BarringInfo;

    invoke-direct {v5}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {v3, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 933
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aput-boolean v0, v3, p2

    .line 934
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object v2, v3, p2

    .line 935
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    aput-boolean v0, v3, p2

    .line 936
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aput v0, v3, p2

    .line 937
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 938
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aput v1, v3, p2

    .line 939
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    const-wide/16 v5, -0x1

    aput-wide v5, v3, p2

    .line 940
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    sget-object v5, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    invoke-interface {v3, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 941
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    new-instance v5, Landroid/util/Pair;

    new-array v6, v0, [I

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 942
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 943
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    aput v0, v3, p2

    .line 944
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mECBMDuration:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, p2

    .line 945
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:[I

    const/4 v4, 0x2

    aput v4, v3, p2

    .line 946
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    aput-boolean v0, v3, p2

    .line 947
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    aput-boolean v0, v3, p2

    .line 948
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    invoke-interface {v3, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 949
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    new-instance v4, Landroid/telephony/satellite/NtnSignalStrength;

    invoke-direct {v4, v0}, Landroid/telephony/satellite/NtnSignalStrength;-><init>(I)V

    aput-object v4, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 953
    :cond_0
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method

.method public static callStateToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 4354
    sget-object p0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    return-object p0

    .line 4352
    :cond_0
    sget-object p0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-object p0

    .line 4350
    :cond_1
    sget-object p0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    return-object p0
.end method

.method public static createCallQuality()Landroid/telephony/CallQuality;
    .locals 12

    .line 4886
    new-instance v0, Landroid/telephony/CallQuality;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CallQuality;-><init>(IIIIIIIIIII)V

    return-object v0
.end method

.method public static createPreciseCallState()Landroid/telephony/PreciseCallState;
    .locals 6

    .line 4877
    new-instance v0, Landroid/telephony/PreciseCallState;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    return-object v0
.end method

.method public static getApnTypesStringFromBitmask(I)Ljava/lang/String;
    .locals 4

    .line 4386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x11

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 4390
    const-string v1, "default"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 p0, p0, -0x12

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 4394
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 4395
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v2

    .line 4396
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    not-int v1, v1

    and-int/2addr p0, v1

    goto :goto_0

    .line 4399
    :cond_2
    const-string p0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 3112
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhysicalChannelConfig;

    .line 3114
    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig;->createLocationInfoSanitizedCopy()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 4523
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1

    .line 4527
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static pii(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4910
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "***"

    return-object p0
.end method

.method public static pii(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 4915
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4916
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[***, size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4915
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldSanitizeLocationForPhysicalChannelConfig(Lcom/android/server/TelephonyRegistry$Record;)Z
    .locals 0

    .line 3104
    iget p0, p0, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyPermissions;->isSystemOrPhone(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;
    .locals 7

    .line 1615
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1616
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1620
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    .line 1621
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne p1, v6, :cond_0

    .line 1623
    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 1625
    :cond_0
    iget v5, v5, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    if-ne v5, p3, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1630
    :cond_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->getRegistrationLimit()I

    move-result v1

    if-eqz p4, :cond_4

    const/4 p4, 0x1

    if-lt v1, p4, :cond_4

    if-lt v4, v1, :cond_4

    .line 1635
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pid "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has exceeded the number of permissible registered listeners. Ignoring request to add."

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1637
    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1638
    iget-object p4, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 1639
    invoke-virtual {p4, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isRegistrationLimitEnabledInPlatformCompat(I)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 1640
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/16 p2, 0x19

    if-lt v4, p2, :cond_5

    .line 1646
    const-string p2, "TelephonyRegistry"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pid "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has exceeded half the number of permissible registered listeners. Now at "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_5
    :goto_1
    new-instance p2, Lcom/android/server/TelephonyRegistry$Record;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry-IA;)V

    .line 1651
    iput-object p1, p2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 1652
    new-instance p4, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-direct {p4, p0, p1}, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    iput-object p4, p2, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    :try_start_1
    invoke-interface {p1, p4, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1662
    :try_start_2
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    monitor-exit v0

    return-object p2

    .line 1659
    :catch_0
    monitor-exit v0

    return-object p3

    .line 1664
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public addCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 3428
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 3429
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3436
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3437
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/ICarrierConfigChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3439
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 3438
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    move-result v2

    .line 3440
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3443
    const-string p0, "Can not create Record instance!"

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 3444
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3447
    :cond_0
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object p0, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 3448
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->carrierConfigChangeListener:Lcom/android/internal/telephony/ICarrierConfigChangeListener;

    .line 3449
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 3450
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 3451
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    iput p0, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 3452
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    iput p0, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 3453
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    iput-object p0, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 3457
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 3279
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 3280
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3281
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "addCarrierPrivilegesCallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 3298
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3299
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3303
    invoke-interface {p2}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v4, 0x0

    .line 3302
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3305
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 3307
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 3308
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 3309
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 3310
    iput-object p4, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 3311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    iput p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 3312
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    iput p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 3313
    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 3314
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 3319
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 3320
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3322
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$Record;->matchCarrierPrivilegesCallback()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3325
    iget-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/util/List;

    .line 3326
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, [I

    check-cast p2, [I

    array-length p2, p2

    .line 3327
    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    .line 3325
    invoke-interface {p3, p4, p2}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/List;[I)V

    .line 3329
    iget-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 3330
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3329
    invoke-interface {p2, p3, p1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3333
    :catch_0
    :try_start_2
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 3335
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 3300
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid slot index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3335
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 5

    .line 1032
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 1033
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1042
    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1044
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 1043
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    move-result v2

    .line 1045
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1048
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1051
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 1052
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 1053
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1054
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 1055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 1056
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 1057
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 1062
    iget-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1065
    :try_start_1
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {p1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1069
    :catch_0
    :try_start_2
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1072
    :cond_1
    const-string/jumbo p0, "listen ooscl: hasNotifyOpptSubInfoChangedOccurred==false no callback"

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1074
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 5

    .line 976
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 977
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 986
    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 987
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 988
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 987
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    move-result v2

    .line 989
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    if-nez v1, :cond_0

    .line 992
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 995
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 996
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 997
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 998
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 999
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 1000
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 1001
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 1006
    iget-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1009
    :try_start_1
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {p1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1013
    :catch_0
    :try_start_2
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1016
    :cond_1
    const-string/jumbo p0, "listen oscl: mHasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1018
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public addSatelliteStateChangeListener(Lcom/android/internal/telephony/ISatelliteStateChangeListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 3504
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 3505
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3506
    const-string v0, "addSatelliteStateChangeListener"

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/TelephonyRegistry;->enforceCallingOrSelfAtLeastReadBasicPhoneStatePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3516
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/ISatelliteStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3517
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3518
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 3517
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    move-result v2

    .line 3519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3522
    const-string p0, "addSatelliteStateChangeListener: can not create Record instance!"

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 3523
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3526
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 3527
    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->satelliteStateChangeListener:Lcom/android/internal/telephony/ISatelliteStateChangeListener;

    .line 3528
    iput-object p2, v1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 3529
    iput-object p3, v1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 3530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 3531
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 3532
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    .line 3538
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mWasSatelliteEnabledNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$Record;->matchSatelliteStateChangeListener()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 3540
    :try_start_1
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry$Record;->satelliteStateChangeListener:Lcom/android/internal/telephony/ISatelliteStateChangeListener;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mIsSatelliteEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3541
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    .line 3540
    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ISatelliteStateChangeListener;->onSatelliteEnabledStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3543
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 3546
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final broadcastCallStateChanged(ILjava/lang/String;II)V
    .locals 4

    .line 4294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/16 v2, 0x5f

    if-nez p1, :cond_0

    .line 4297
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V

    const/4 v3, 0x0

    .line 4298
    invoke-static {v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4301
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V

    const/4 v3, 0x1

    .line 4302
    invoke-static {v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4308
    :catch_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4309
    throw p0

    .line 4311
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4312
    const-string/jumbo v1, "state"

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->callStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    if-eq p4, p1, :cond_1

    .line 4317
    const-string v1, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4318
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4319
    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    if-eq p3, p1, :cond_2

    .line 4323
    const-string/jumbo p1, "slot"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4324
    const-string p1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x1000000

    .line 4328
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4331
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4332
    const-string p3, "incoming_number"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4336
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4338
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const/16 p4, 0x33

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p2, v0, p3, v1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 4341
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.READ_CALL_LOG"

    filled-new-array {v1, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    return-void
.end method

.method public final broadcastDataConnectionStateChanged(IILandroid/telephony/PreciseDataConnectionState;)V
    .locals 3

    .line 4363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4365
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 4364
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4366
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4368
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p3

    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object p3

    .line 4367
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4369
    const-string/jumbo p3, "slot"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4370
    const-string/jumbo p1, "subscription"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4374
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4375
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p2

    .line 4376
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 4127
    :try_start_0
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4155
    :catch_0
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v4, v5}, Landroid/telephony/LocationAccessPolicy;->isLocationModeEnabled(Landroid/content/Context;I)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v7, "android.permission.READ_PHONE_STATE"

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    .line 4156
    invoke-virtual {v0, v1, v3, v2, v8}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object v10

    .line 4157
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v15, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v4

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "I:RA"

    .line 4161
    invoke-virtual {v0, v3, v2, v12}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v12

    .line 4157
    invoke-virtual {v4, v10, v11, v12}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 4162
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v15, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v4

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "I:RPA,E:R"

    .line 4168
    invoke-virtual {v0, v3, v2, v13}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v14

    const/4 v13, 0x0

    move-object/from16 v22, v9

    move-object v9, v4

    move-object/from16 v4, v22

    .line 4162
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 4170
    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object v17

    .line 4171
    iget-object v1, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v15, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v16

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    const-string v1, "I:R,E:A"

    .line 4176
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v21

    const/16 v20, 0x0

    .line 4171
    invoke-virtual/range {v16 .. v21}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 4177
    iget-object v1, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v15, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v16

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    filled-new-array {v7, v4}, [Ljava/lang/String;

    move-result-object v19

    const-string v1, "I:RP,E:RA"

    .line 4183
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v21

    .line 4177
    invoke-virtual/range {v16 .. v21}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    goto/16 :goto_1

    .line 4185
    :cond_0
    new-instance v4, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/TelephonyRegistry;)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, [Ljava/lang/String;

    .line 4187
    array-length v4, v13

    move v9, v8

    :goto_0
    if-ge v9, v4, :cond_1

    aget-object v10, v13, v9

    .line 4188
    invoke-virtual {v0, v1, v3, v2, v8}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object v15

    .line 4189
    invoke-virtual {v15, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4190
    iget-object v10, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v10

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const-string v14, "I:R"

    .line 4193
    invoke-virtual {v0, v3, v2, v14}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v14

    .line 4190
    invoke-virtual {v10, v15, v12, v14}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 4194
    iget-object v10, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v14

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v16

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const-string v10, "I:RP,E:R"

    .line 4199
    invoke-virtual {v0, v3, v2, v10}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v19

    const/16 v18, 0x0

    .line 4194
    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4202
    :cond_1
    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/android/server/TelephonyRegistry;->createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;

    move-result-object v10

    .line 4203
    iget-object v1, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v9

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/String;

    const-string v1, "I:R,lbp"

    .line 4208
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v14

    .line 4203
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 4209
    iget-object v1, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v9

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const-string v1, "I:RP,E:R,lbp"

    .line 4214
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/TelephonyRegistry;->createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v14

    .line 4209
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    :goto_1
    return-void
.end method

.method public final broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V
    .locals 3

    .line 4249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4251
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4255
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4256
    throw p0

    .line 4258
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIG_STR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4259
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4260
    invoke-virtual {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->fillInSignalStrengthNotifierBundle(Landroid/telephony/SignalStrength;Landroid/os/Bundle;)V

    .line 4261
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4262
    const-string/jumbo p1, "subscription"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4263
    const-string/jumbo p1, "slot"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4264
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 2

    .line 4634
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->renounceCoarseLocationAccess:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4637
    :cond_0
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 4639
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 4640
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 4641
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 4642
    invoke-virtual {v0, p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    const-string v0, "TelephonyRegistry push"

    .line 4643
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 4644
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 4645
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    const v0, 0x7fffffff

    .line 4646
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 4647
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 4648
    invoke-virtual {p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p1

    .line 4650
    new-instance p2, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 2

    .line 4605
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->renounceFineLocationAccess:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4608
    :cond_0
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 4610
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 4611
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 4612
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 4613
    invoke-virtual {v0, p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    const-string v0, "TelephonyRegistry push"

    .line 4614
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 4615
    invoke-virtual {p1, v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 4616
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 4617
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 4618
    invoke-virtual {p1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p1

    .line 4619
    invoke-virtual {p1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p1

    .line 4621
    new-instance p2, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final checkListenerPermission(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 4429
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->isLocationPermissionRequired(Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4430
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 4432
    invoke-virtual {v0, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 4433
    invoke-virtual {v0, p4}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " events: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4434
    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 4435
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 4436
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    const/16 v3, 0x1d

    .line 4438
    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 4441
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 4442
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 4443
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 4445
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v0

    .line 4444
    invoke-static {v3, v0}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 4446
    sget-object v3, Lcom/android/server/TelephonyRegistry$3;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_0

    .line 4448
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to listen for events "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " due to insufficient location permissions."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4455
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/TelephonyRegistry;->isPhoneStatePermissionRequired(Ljava/util/Set;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4456
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 4462
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->isPrecisePhoneStatePermissionRequired(Ljava/util/Set;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    .line 4466
    :try_start_0
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {p3, v0, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4469
    :catch_0
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {p3, p2, p5}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 4473
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->isActiveEmergencySessionPermissionRequired(Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 4474
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.READ_ACTIVE_EMERGENCY_SESSION"

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4478
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->isPrivilegedPhoneStatePermissionRequired(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4479
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, p1, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v1
.end method

.method public final checkNotifyPermission()Z
    .locals 1

    .line 4422
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkNotifyPermission(Ljava/lang/String;)Z
    .locals 0

    .line 4412
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4416
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    const/4 p0, 0x0

    return p0
.end method

.method public final checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 6

    .line 4658
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    if-eqz v0, :cond_e

    .line 4660
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v1, 0x1

    .line 4665
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x1d

    if-eqz v2, :cond_3

    .line 4669
    :try_start_0
    new-instance v2, Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p2

    invoke-direct {v2, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 4670
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4671
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 4672
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4673
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v5, 0x0

    .line 4674
    invoke-virtual {v2, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 4673
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 4676
    :cond_2
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 4677
    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 4676
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4680
    :catch_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const/16 v2, 0x9

    .line 4684
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4686
    :try_start_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p2

    if-eqz v2, :cond_4

    .line 4692
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, v2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4695
    :catch_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    const/4 v2, 0x2

    .line 4699
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4701
    :try_start_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p2

    if-eqz v2, :cond_6

    .line 4703
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 4708
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v5, 0x63

    if-ne v2, v5, :cond_5

    const/4 v2, -0x1

    :cond_5
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 4712
    :catch_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    const/16 v2, 0xb

    .line 4716
    invoke-virtual {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4722
    :try_start_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4723
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4724
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 4727
    :catch_3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    const/16 v2, 0x14

    .line 4731
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4737
    :try_start_4
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 4739
    :catch_4
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    const/16 v2, 0x15

    .line 4743
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4749
    :try_start_5
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v2, v2, p2

    if-eqz v2, :cond_9

    .line 4750
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 4753
    :catch_5
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    const/4 v2, 0x3

    .line 4757
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4763
    :try_start_6
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 4766
    :catch_6
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    const/4 v2, 0x4

    .line 4770
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4776
    :try_start_7
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    .line 4779
    :catch_7
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_7
    const/4 v2, 0x5

    .line 4783
    invoke-virtual {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4789
    :try_start_8
    invoke-virtual {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4790
    invoke-virtual {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4792
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object v2, v2, p2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    .line 4795
    :catch_8
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_8
    const/4 v1, 0x7

    .line 4799
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4807
    :try_start_9
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v1, v1, p2

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget p2, v2, p2

    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    .line 4810
    :catch_9
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_9
    return-void

    .line 4661
    :cond_e
    :goto_a
    const-string p0, "checkPossibleMissNotify: events = null."

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final createServiceStateBroadcastOptions(IILjava/lang/String;)Landroid/app/BroadcastOptions;
    .locals 1

    .line 4238
    new-instance p0, Landroid/app/BroadcastOptions;

    invoke-direct {p0}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 v0, 0x1

    .line 4239
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4242
    const-string p2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p0, p2, p1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 p1, 0x2

    .line 4244
    invoke-virtual {p0, p1}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p0

    return-object p0
.end method

.method public final createServiceStateIntent(Landroid/telephony/ServiceState;IIZ)Landroid/content/Intent;
    .locals 1

    .line 4220
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 4221
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    .line 4224
    invoke-virtual {p1, p4}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 4226
    :cond_0
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 4228
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4229
    const-string/jumbo p1, "subscription"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4230
    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4231
    const-string/jumbo p1, "slot"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4232
    const-string p1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public final cutListToSize(Ljava/util/List;I)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_1

    .line 831
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p2, :cond_1

    .line 832
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final doesLimitApplyForListeners(II)Z
    .locals 0

    .line 969
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyPermissions;->isSystemOrPhone(I)Z

    move-result p0

    if-nez p0, :cond_0

    if-eq p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3997
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3999
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "TelephonyRegistry"

    invoke-static {p2, v1, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4001
    :cond_0
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter p2

    .line 4002
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4003
    const-string/jumbo v2, "last known state:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4004
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v2, 0x0

    move v3, v2

    .line 4005
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4006
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone Id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4007
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4008
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4009
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRingingCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4010
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mForegroundCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBackgroundCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPreciseCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4013
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallIncomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4015
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mVoiceActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4017
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4018
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserMobileDataState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMessageWaiting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4021
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallForwarding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4022
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4024
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellIdentity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4026
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mImsCallDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSrvccState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallPreciseDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallQuality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4030
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPreciseDataConnectionStates="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4032
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOutgoingCallEmergencyNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4033
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOutgoingSmsEmergencyNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBarringInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCarrierNetworkChangeState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mTelephonyDisplayInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsDataEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataEnabledReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4039
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllowedNetworkTypeReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllowedNetworkTypeValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPhysicalChannelConfigs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLinkCapacityEstimateList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4043
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mECBMReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mECBMDuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mECBMDuration:[J

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4045
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSCBMReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4046
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSCBMDuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSCBMDuration:[J

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCarrierRoamingNtnMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCarrierRoamingNtnEligible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4049
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCarrierRoamingNtnSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4053
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 4054
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCarrierPrivilegeState=<packages="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 4055
    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", uids="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [I

    .line 4056
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4054
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4057
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 4058
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCarrierServiceState=<package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4060
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCarrierRoamingNtnAvailableServices="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    .line 4061
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4060
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4062
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRadioPowerState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4063
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 4066
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPhoneCapability="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActiveDataSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmergencyNumberList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDefaultPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDefaultSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4072
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4074
    const-string/jumbo v3, "local logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4075
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4076
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4077
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4078
    const-string/jumbo v3, "listen logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4079
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4080
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4081
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4082
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "registrations: count="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4083
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4084
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v2, v2, 0x1

    check-cast p3, Lcom/android/server/TelephonyRegistry$Record;

    .line 4085
    invoke-virtual {v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 4087
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4088
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enforceCallingOrSelfAtLeastReadBasicPhoneStatePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 4928
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_1

    .line 4930
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 4931
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneStateNoThrow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4941
    :cond_1
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.READ_BASIC_PHONE_STATE"

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final fillInSignalStrengthNotifierBundle(Landroid/telephony/SignalStrength;Landroid/os/Bundle;)V
    .locals 1

    .line 4268
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    .line 4269
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrength;

    .line 4270
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v0, :cond_1

    .line 4271
    const-string v0, "Lte"

    check-cast p1, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 4272
    :cond_1
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v0, :cond_2

    .line 4273
    const-string v0, "Cdma"

    check-cast p1, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 4274
    :cond_2
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v0, :cond_3

    .line 4275
    const-string v0, "Gsm"

    check-cast p1, Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 4276
    :cond_3
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v0, :cond_4

    .line 4277
    const-string v0, "Wcdma"

    check-cast p1, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 4278
    :cond_4
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v0, :cond_5

    .line 4279
    const-string v0, "Tdscdma"

    check-cast p1, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 4280
    :cond_5
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v0, :cond_0

    .line 4281
    const-string v0, "Nr"

    check-cast p1, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final getBackwardCompatibleTelephonyDisplayInfo(Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;
    .locals 6

    .line 2170
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v1

    .line 2171
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p0

    const/16 v0, 0x14

    if-ne v1, v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    move v2, p0

    goto :goto_1

    :cond_1
    const/16 v0, 0xd

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    .line 2178
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->isRoaming()Z

    move-result v3

    .line 2179
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->isNtn()Z

    move-result v4

    .line 2181
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->isSatelliteConstrainedData()Z

    move-result v5

    .line 2182
    new-instance v0, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct/range {v0 .. v5}, Landroid/telephony/TelephonyDisplayInfo;-><init>(IIZZZ)V

    return-object v0
.end method

.method public final getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .locals 0

    .line 1609
    invoke-virtual {p1}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object p0, p0, p2

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final getPhoneIdFromSubId(I)I
    .locals 2

    .line 4890
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telephony_subscription_service"

    .line 4891
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x7fffffff

    if-ne p1, v1, :cond_1

    .line 4895
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 4898
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 4900
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    return p0
.end method

.method public final getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 703
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public final handleRemoveListLocked()V
    .locals 4

    .line 4486
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4489
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/os/IBinder;

    .line 4490
    invoke-virtual {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 4492
    :cond_0
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_1

    .line 4543
    iget p0, p1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    if-ne p0, p3, :cond_0

    return v1

    :cond_0
    return v0

    .line 4545
    :cond_1
    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const p3, 0x7fffffff

    if-ne p1, p3, :cond_3

    .line 4546
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    if-ne p1, p2, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public idMatchRelaxed(Lcom/android/server/TelephonyRegistry$Record;II)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p2, :cond_3

    .line 4573
    iget p0, p1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    if-ne p0, v0, :cond_1

    if-nez p3, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    if-ne p0, p3, :cond_2

    return v2

    :cond_2
    return v1

    .line 4580
    :cond_3
    iget v3, p1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_7

    .line 4582
    iget p1, p1, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    if-ne p1, v0, :cond_5

    if-nez p3, :cond_4

    return v2

    :cond_4
    return v1

    .line 4585
    :cond_5
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, p0, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    if-ne v3, p2, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public final isActiveEmergencySessionPermissionRequired(Ljava/util/Set;)Z
    .locals 0

    const/16 p0, 0x1d

    .line 586
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x1e

    .line 587
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isLocationPermissionRequired(Ljava/util/Set;)Z
    .locals 0

    const/4 p0, 0x5

    .line 530
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0xb

    .line 531
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isPhoneStatePermissionRequired(Ljava/util/Set;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2

    const/4 v0, 0x4

    .line 536
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    const/4 v0, 0x3

    .line 537
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x19

    .line 538
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    .line 543
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    .line 544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 545
    invoke-virtual {v0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isCallStateReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x17

    .line 552
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 553
    invoke-virtual {v0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isActiveDataSubIdReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0xb

    .line 559
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 560
    invoke-virtual {v0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isCellInfoReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x15

    .line 567
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 568
    invoke-virtual {p0, p2, p3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isDisplayInfoReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method public final isPrecisePhoneStatePermissionRequired(Ljava/util/Set;)Z
    .locals 1

    .line 577
    sget-object p0, Lcom/android/server/TelephonyRegistry;->REQUIRE_PRECISE_PHONE_STATE_PERMISSION:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 578
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isPrivilegedPhoneStatePermissionRequired(Ljava/util/Set;)Z
    .locals 0

    const/16 p0, 0x10

    .line 591
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x12

    .line 592
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x18

    .line 593
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x23

    .line 594
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x28

    .line 595
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x29

    .line 596
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x2f

    .line 598
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x2e

    .line 599
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$broadcastServiceStateChanged$1()[Ljava/lang/String;
    .locals 0

    .line 4186
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/LocationAccessPolicy;->getLocationBypassPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$checkCoarseLocationAccess$3(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .locals 0

    .line 4651
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 4652
    invoke-static {p0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p0

    .line 4653
    sget-object p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$checkFineLocationAccess$2(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .locals 0

    .line 4622
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 4623
    invoke-static {p0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p0

    .line 4624
    sget-object p1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$notifyCarrierNetworkChange$0(I)Z
    .locals 0

    .line 1976
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public final listen(ZZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;Ljava/util/Set;ZI)V
    .locals 6

    .line 1152
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1153
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listen: E pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " notifyNow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " myUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1163
    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    invoke-interface {p6}, Ljava/util/Set;->clear()V

    .line 1168
    invoke-interface {p5}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void

    .line 1175
    :cond_0
    const-string/jumbo v5, "listen"

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v1, p6

    move v2, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_2b

    .line 1182
    :cond_1
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-nez p0, :cond_2

    const p8, 0x7fffffff

    goto :goto_0

    :cond_2
    move p8, v2

    .line 1189
    :goto_0
    invoke-virtual {v0, p8}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result p0

    .line 1191
    iget-object p3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter p3

    .line 1193
    :try_start_0
    invoke-interface {p5}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 1194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p6

    .line 1195
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1194
    invoke-virtual {v0, p6, v2}, Lcom/android/server/TelephonyRegistry;->doesLimitApplyForListeners(II)Z

    move-result p6

    .line 1196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v0, p4, v2, v5, p6}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object p4

    if-nez p4, :cond_3

    .line 1199
    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2c

    .line 1202
    :cond_3
    iget-object p6, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object p6, p4, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 1203
    iput-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1204
    iput-object v3, p4, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 1205
    iput-object v4, p4, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 1206
    iput-boolean p2, p4, Lcom/android/server/TelephonyRegistry$Record;->renounceCoarseLocationAccess:Z

    .line 1207
    iput-boolean p1, p4, Lcom/android/server/TelephonyRegistry$Record;->renounceFineLocationAccess:Z

    .line 1208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p4, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 1209
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p4, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 1210
    iput p8, p4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1211
    iput p0, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1212
    iput-object v1, p4, Lcom/android/server/TelephonyRegistry$Record;->eventList:Ljava/util/Set;

    if-eqz p7, :cond_33

    .line 1217
    invoke-virtual {v0, p0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x1

    .line 1218
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p2, 0x1d

    if-eqz p1, :cond_6

    .line 1221
    :try_start_1
    new-instance p1, Landroid/telephony/ServiceState;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p5, p5, p6

    invoke-direct {p1, p5}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1222
    invoke-virtual {v0, p4, p2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 1223
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p5, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_1

    .line 1224
    :cond_4
    invoke-virtual {v0, p4, p2}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 1225
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 p6, 0x0

    .line 1226
    invoke-virtual {p1, p6}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object p1

    .line 1225
    invoke-interface {p5, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_1

    .line 1228
    :cond_5
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1229
    invoke-virtual {p1, p0}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object p1

    .line 1228
    invoke-interface {p5, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1232
    :catch_0
    :try_start_2
    iget-object p1, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_6
    :goto_1
    const/4 p1, 0x2

    .line 1235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p5, :cond_8

    .line 1237
    :try_start_3
    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p5, p5, p6

    if-eqz p5, :cond_8

    .line 1239
    invoke-virtual {p5}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p5

    .line 1240
    iget-object p6, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 p7, 0x63

    if-ne p5, p7, :cond_7

    const/4 p5, -0x1

    :cond_7
    invoke-interface {p6, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1244
    :catch_1
    :try_start_4
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_8
    :goto_2
    const/4 p5, 0x3

    .line 1248
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 1247
    invoke-interface {v1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p5, :cond_9

    .line 1250
    :try_start_5
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p6, v0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    iget p7, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p6, p6, p7

    invoke-interface {p5, p6}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1253
    :catch_2
    :try_start_6
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_9
    :goto_3
    const/4 p5, 0x4

    .line 1257
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 1256
    invoke-interface {v1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p5, :cond_a

    .line 1259
    :try_start_7
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p6, v0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    iget p7, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p6, p6, p7

    invoke-interface {p5, p6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 1262
    :catch_3
    :try_start_8
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_a
    :goto_4
    const/4 p5, 0x5

    .line 1265
    invoke-virtual {v0, p4, p5}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p5, :cond_b

    .line 1269
    :try_start_9
    invoke-virtual {v0, p4, p0}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p5

    if-eqz p5, :cond_b

    .line 1270
    invoke-virtual {v0, p4, p2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p5

    if-eqz p5, :cond_b

    .line 1272
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p6, v0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    iget p7, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p6, p6, p7

    invoke-interface {p5, p6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 1275
    :catch_4
    :try_start_a
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_b
    :goto_5
    const/16 p5, 0x24

    .line 1278
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz p5, :cond_c

    .line 1280
    :try_start_b
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p6, v0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget p7, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p6, p6, p7

    .line 1281
    invoke-virtual {v0, p4, p7}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object p7

    .line 1280
    invoke-interface {p5, p6, p7}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 1283
    :catch_5
    :try_start_c
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_c
    :goto_6
    const/4 p5, 0x6

    .line 1286
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz p5, :cond_d

    .line 1288
    :try_start_d
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p6, v0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget p7, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p6, p6, p7

    invoke-interface {p5, p6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    .line 1290
    :catch_6
    :try_start_e
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_d
    :goto_7
    const/4 p5, 0x7

    .line 1293
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz p5, :cond_e

    .line 1295
    :try_start_f
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p6, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    iget p7, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p6, p6, p7

    iget-object p8, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget p7, p8, p7

    invoke-interface {p5, p6, p7}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 1298
    :catch_7
    :try_start_10
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_e
    :goto_8
    const/16 p5, 0x8

    .line 1301
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz p5, :cond_f

    .line 1303
    :try_start_11
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p6, v0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    iget p7, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p6, p6, p7

    invoke-interface {p5, p6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_9

    .line 1305
    :catch_8
    :try_start_12
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_f
    :goto_9
    const/16 p5, 0x9

    .line 1308
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz p5, :cond_10

    .line 1310
    :try_start_13
    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p5, p5, p6

    if-eqz p5, :cond_10

    .line 1311
    iget-object p6, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p6, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_a

    .line 1314
    :catch_9
    :try_start_14
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_10
    :goto_a
    const/16 p5, 0xb

    .line 1317
    invoke-virtual {v0, p4, p5}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz p5, :cond_11

    .line 1324
    :try_start_15
    invoke-virtual {v0, p4, p0}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p5

    if-eqz p5, :cond_11

    .line 1325
    invoke-virtual {v0, p4, p2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 1326
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_b

    .line 1329
    :catch_a
    :try_start_16
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_11
    :goto_b
    const/16 p2, 0xc

    .line 1332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz p2, :cond_12

    .line 1334
    :try_start_17
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p5, p5, p6

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_c

    .line 1336
    :catch_b
    :try_start_18
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_12
    :goto_c
    const/16 p2, 0x1a

    .line 1339
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz p2, :cond_13

    .line 1341
    :try_start_19
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p5, p5, p6

    iget-object p7, v0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget p6, p7, p6

    invoke-interface {p2, p5, p6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_d

    .line 1344
    :catch_c
    :try_start_1a
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_13
    :goto_d
    const/16 p2, 0x1c

    .line 1347
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 1348
    iget-object p2, v0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/ImsReasonInfo;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz p2, :cond_14

    .line 1351
    :try_start_1b
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p5, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_e

    .line 1353
    :catch_d
    :try_start_1c
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_14
    :goto_e
    const/16 p2, 0xd

    .line 1358
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1357
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz p2, :cond_15

    .line 1361
    :try_start_1d
    iget-object p2, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/telephony/PreciseDataConnectionState;

    .line 1362
    iget-object p6, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p6, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_f

    .line 1365
    :catch_e
    :try_start_1e
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_15
    const/16 p2, 0x11

    .line 1368
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    if-eqz p2, :cond_16

    .line 1370
    :try_start_1f
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p5, p5, p6

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_10

    .line 1372
    :catch_f
    :try_start_20
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_16
    :goto_10
    const/16 p2, 0x12

    .line 1375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    if-eqz p2, :cond_17

    .line 1377
    :try_start_21
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p5, p5, p6

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_10
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto :goto_11

    .line 1380
    :catch_10
    :try_start_22
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_17
    :goto_11
    const/16 p2, 0x13

    .line 1383
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    if-eqz p2, :cond_18

    .line 1385
    :try_start_23
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p5, p5, p6

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_11
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_12

    .line 1387
    :catch_11
    :try_start_24
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_18
    :goto_12
    const/16 p2, 0x14

    .line 1390
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    if-eqz p2, :cond_19

    .line 1392
    :try_start_25
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p5, p5, p6

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_12
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto :goto_13

    .line 1394
    :catch_12
    :try_start_26
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_19
    :goto_13
    const/16 p2, 0x15

    .line 1397
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    if-eqz p2, :cond_1a

    .line 1399
    :try_start_27
    iget-object p2, v0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p2, p2, p5

    if-eqz p2, :cond_1a

    .line 1400
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p5, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_13
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto :goto_14

    .line 1403
    :catch_13
    :try_start_28
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1a
    :goto_14
    const/16 p2, 0x19

    .line 1406
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    if-eqz p2, :cond_1b

    .line 1408
    :try_start_29
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_14
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto :goto_15

    .line 1410
    :catch_14
    :try_start_2a
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1b
    :goto_15
    const/16 p2, 0x16

    .line 1413
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    if-eqz p2, :cond_1c

    .line 1415
    :try_start_2b
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_15
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto :goto_16

    .line 1417
    :catch_15
    :try_start_2c
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1c
    :goto_16
    const/16 p2, 0x17

    .line 1421
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1420
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    if-eqz p2, :cond_1d

    .line 1423
    :try_start_2d
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget p5, v0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_16
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    goto :goto_17

    .line 1425
    :catch_16
    :try_start_2e
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1d
    :goto_17
    const/16 p2, 0x18

    .line 1428
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    if-eqz p2, :cond_1e

    .line 1430
    :try_start_2f
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:[I

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p5, p5, p6

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_17
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    goto :goto_18

    .line 1432
    :catch_17
    :try_start_30
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1e
    :goto_18
    const/16 p2, 0x10

    .line 1435
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    if-eqz p2, :cond_1f

    .line 1437
    :try_start_31
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p5, p5, p6

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_18
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    goto :goto_19

    .line 1439
    :catch_18
    :try_start_32
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_1f
    :goto_19
    const/16 p2, 0x1b

    .line 1442
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    if-eqz p2, :cond_21

    .line 1446
    :try_start_33
    iget p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    iget p5, v0, Lcom/android/server/TelephonyRegistry;->mPid:I

    if-ne p2, p5, :cond_20

    .line 1447
    iget-object p2, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    goto :goto_1a

    .line 1449
    :cond_20
    iget-object p2, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1451
    :goto_1a
    iget-object p5, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p5, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStatesChanged(Ljava/util/List;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_19
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    goto :goto_1b

    .line 1456
    :catch_19
    :try_start_34
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_21
    :goto_1b
    const/16 p2, 0x20

    .line 1459
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 1460
    iget-object p2, v0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/BarringInfo;

    if-eqz p2, :cond_23

    .line 1465
    invoke-virtual {p2}, Landroid/telephony/BarringInfo;->createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;

    move-result-object p5
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 1468
    :try_start_35
    iget-object p6, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1469
    invoke-virtual {v0, p4, p0}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result p7

    if-eqz p7, :cond_22

    goto :goto_1c

    :cond_22
    move-object p2, p5

    .line 1468
    :goto_1c
    invoke-interface {p6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_1a
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    goto :goto_1d

    .line 1472
    :catch_1a
    :try_start_36
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_23
    :goto_1d
    const/16 p2, 0x21

    .line 1477
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1476
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    if-eqz p2, :cond_25

    .line 1479
    :try_start_37
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1480
    invoke-static {p4}, Lcom/android/server/TelephonyRegistry;->shouldSanitizeLocationForPhysicalChannelConfig(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result p5

    if-eqz p5, :cond_24

    .line 1481
    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1482
    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    .line 1481
    invoke-static {p5}, Lcom/android/server/TelephonyRegistry;->getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object p5

    goto :goto_1e

    .line 1483
    :cond_24
    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    .line 1479
    :goto_1e
    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_1b
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    goto :goto_1f

    .line 1485
    :catch_1b
    :try_start_38
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_25
    :goto_1f
    const/16 p2, 0x22

    .line 1489
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1488
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    if-eqz p2, :cond_26

    .line 1491
    :try_start_39
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p5, p5, p6

    iget-object p7, v0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aget p6, p7, p6

    invoke-interface {p2, p5, p6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataEnabledChanged(ZI)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_39} :catch_1c
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    goto :goto_20

    .line 1494
    :catch_1c
    :try_start_3a
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_26
    :goto_20
    const/16 p2, 0x29

    .line 1497
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    if-eqz p2, :cond_27

    .line 1500
    :try_start_3b
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mSimultaneousCellularCallingSubIds:[I

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSimultaneousCallingStateChanged([I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3b} :catch_1d
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    goto :goto_21

    .line 1503
    :catch_1d
    :try_start_3c
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_27
    :goto_21
    const/16 p2, 0x25

    .line 1507
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1506
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    if-eqz p2, :cond_28

    .line 1509
    :try_start_3d
    iget-object p2, v0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 1510
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1511
    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    .line 1510
    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_1e
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    goto :goto_22

    .line 1514
    :catch_1e
    :try_start_3e
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_28
    :goto_22
    const/16 p2, 0x27

    .line 1517
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 1519
    iget-object p2, v0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/telephony/CallState;

    .line 1520
    invoke-virtual {p5}, Landroid/telephony/CallState;->getCallState()I

    move-result p6

    if-ne p6, p0, :cond_29

    goto :goto_23

    :cond_2a
    const/4 p5, 0x0

    :goto_23
    if-eqz p5, :cond_2c

    .line 1526
    invoke-virtual {p5}, Landroid/telephony/CallState;->getImsCallSessionId()Ljava/lang/String;

    move-result-object p2
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    .line 1528
    :try_start_3f
    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/SparseArray;

    invoke-virtual {p5, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/telephony/ims/MediaQualityStatus;

    if-eqz p5, :cond_2b

    .line 1530
    invoke-virtual {p5}, Landroid/telephony/ims/MediaQualityStatus;->getCallSessionId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2b

    .line 1531
    iget-object p6, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p6, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    .line 1533
    :cond_2b
    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/SparseArray;

    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/telephony/ims/MediaQualityStatus;

    if-eqz p5, :cond_2c

    .line 1535
    invoke-virtual {p5}, Landroid/telephony/ims/MediaQualityStatus;->getCallSessionId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 1536
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {p2, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_3f} :catch_1f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    goto :goto_24

    .line 1539
    :catch_1f
    :try_start_40
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_2c
    :goto_24
    const/16 p2, 0x28

    .line 1543
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    if-eqz p2, :cond_2f

    .line 1545
    :try_start_41
    iget-object p2, v0, Lcom/android/server/TelephonyRegistry;->mECBMDuration:[J

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-wide p6, p2, p5

    const-wide/16 v2, 0x0

    cmp-long p2, p6, v2

    if-eqz p2, :cond_2d

    .line 1546
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-interface {p2, p0, p6, p7, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallbackModeStarted(IJI)V

    goto :goto_25

    .line 1550
    :cond_2d
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p6, v0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    aget p5, p6, p5

    iget p6, p4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-interface {p2, p0, p5, p6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallbackModeStopped(III)V

    .line 1555
    :goto_25
    iget-object p0, v0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    iget p2, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget p0, p0, p2

    if-eqz p0, :cond_2e

    .line 1556
    iget-object p0, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p5, v0, Lcom/android/server/TelephonyRegistry;->mSCBMDuration:[J

    aget-wide p5, p5, p2

    iget p2, p4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-interface {p0, p1, p5, p6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallbackModeStarted(IJI)V

    goto :goto_26

    .line 1560
    :cond_2e
    iget-object p2, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget p5, p4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-interface {p2, p1, p0, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallbackModeStopped(III)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_41} :catch_20
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    goto :goto_26

    .line 1565
    :catch_20
    :try_start_42
    iget-object p0, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_2f
    :goto_26
    const/16 p0, 0x2a

    .line 1568
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    if-eqz p0, :cond_30

    .line 1570
    :try_start_43
    iget-object p0, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p1, v0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    iget p2, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p1, p1, p2

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnModeChanged(Z)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_43} :catch_21
    .catchall {:try_start_43 .. :try_end_43} :catchall_0

    goto :goto_27

    .line 1573
    :catch_21
    :try_start_44
    iget-object p0, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_30
    :goto_27
    const/16 p0, 0x2b

    .line 1577
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1576
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    if-eqz p0, :cond_31

    .line 1579
    :try_start_45
    iget-object p0, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p1, v0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    iget p2, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-boolean p1, p1, p2

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnEligibleStateChanged(Z)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_45} :catch_22
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    goto :goto_28

    .line 1582
    :catch_22
    :try_start_46
    iget-object p0, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_31
    :goto_28
    const/16 p0, 0x2c

    .line 1586
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1585
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_0

    if-eqz p0, :cond_32

    .line 1588
    :try_start_47
    iget-object p0, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p1, v0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    iget p2, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1589
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    .line 1588
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnAvailableServicesChanged([I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_47} :catch_23
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    goto :goto_29

    .line 1591
    :catch_23
    :try_start_48
    iget-object p0, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    :cond_32
    :goto_29
    const/16 p0, 0x2d

    .line 1595
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1594
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_0

    if-eqz p0, :cond_33

    .line 1597
    :try_start_49
    iget-object p0, p4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object p1, v0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    iget p2, p4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    aget-object p1, p1, p2

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_49} :catch_24
    .catchall {:try_start_49 .. :try_end_49} :catchall_0

    goto :goto_2a

    .line 1600
    :catch_24
    :try_start_4a
    iget-object p0, p4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1604
    :cond_33
    :goto_2a
    monitor-exit p3

    :goto_2b
    return-void

    :goto_2c
    monitor-exit p3
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0

    throw p0
.end method

.method public listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V
    .locals 10

    .line 1143
    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Set;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v9, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p8

    .line 1144
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->listen(ZZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;Ljava/util/Set;ZI)V

    return-void
.end method

.method public notifyActiveDataSubIdChanged(I)V
    .locals 6

    .line 2759
    const-string/jumbo v0, "notifyActiveDataSubIdChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2763
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyActiveDataSubIdChanged: activeDataSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2764
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyActiveDataSubIdChanged: activeDataSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2766
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 2767
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2768
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x17

    .line 2769
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2772
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2774
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2778
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2779
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyAllowedNetworkTypesChanged(IIIJ)V
    .locals 6

    .line 3169
    const-string/jumbo v0, "notifyAllowedNetworkTypesChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3173
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3174
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3175
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aput p3, v1, p1

    .line 3176
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    aput-wide p4, v1, p1

    .line 3178
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x23

    .line 3179
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3181
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 3189
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3, p4, p5}, Lcom/android/internal/telephony/IPhoneStateListener;->onAllowedNetworkTypesChanged(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3191
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3196
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3197
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V
    .locals 8

    .line 3010
    const-string/jumbo v0, "notifyBarringInfo()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3013
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3014
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received invalid phoneId for BarringInfo = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    return-void

    .line 3018
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    if-nez p3, :cond_2

    .line 3020
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received null BarringInfo for subId="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", phoneId="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 3021
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance p2, Landroid/telephony/BarringInfo;

    invoke-direct {p2}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3022
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 3024
    :cond_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/telephony/BarringInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3026
    monitor-exit v0

    return-void

    .line 3028
    :cond_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    invoke-interface {v1, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3030
    invoke-virtual {p3}, Landroid/telephony/BarringInfo;->createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;

    move-result-object v1

    .line 3032
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_4
    :goto_0
    if-ge v4, v3, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v6, 0x20

    .line 3033
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3035
    invoke-virtual {p0, v5, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    .line 3041
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v7, 0x1

    .line 3042
    invoke-virtual {p0, v5, v7}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p3

    goto :goto_1

    :cond_5
    move-object v7, v1

    .line 3041
    :goto_1
    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IPhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3045
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3049
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3050
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 1

    const v0, 0x7fffffff

    .line 2187
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .locals 7

    .line 2191
    const-string/jumbo v0, "notifyCallForwardingChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2198
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2199
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2200
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2201
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v2, v0

    .line 2202
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v6, 0x4

    .line 2203
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2205
    invoke-virtual {p0, v5, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 2207
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2209
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2214
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2215
    monitor-exit v1

    :goto_1
    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V
    .locals 6

    .line 2906
    const-string/jumbo v0, "notifyCallQualityChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2910
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2911
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2913
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aput-object p1, v1, p2

    .line 2914
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput p4, v1, p2

    .line 2915
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    .line 2916
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallState;

    invoke-virtual {v1}, Landroid/telephony/CallState;->getCallState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 2918
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallState;

    .line 2919
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Landroid/telephony/CallState$Builder;

    .line 2920
    invoke-virtual {v1}, Landroid/telephony/CallState;->getCallState()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/telephony/CallState$Builder;-><init>(I)V

    .line 2921
    invoke-virtual {v4, p4}, Landroid/telephony/CallState$Builder;->setNetworkType(I)Landroid/telephony/CallState$Builder;

    move-result-object p4

    .line 2922
    invoke-virtual {p4, p1}, Landroid/telephony/CallState$Builder;->setCallQuality(Landroid/telephony/CallQuality;)Landroid/telephony/CallState$Builder;

    move-result-object p1

    .line 2923
    invoke-virtual {v1}, Landroid/telephony/CallState;->getCallClassification()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/telephony/CallState$Builder;->setCallClassification(I)Landroid/telephony/CallState$Builder;

    move-result-object p1

    .line 2924
    invoke-virtual {v1}, Landroid/telephony/CallState;->getImsCallSessionId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/telephony/CallState$Builder;->setImsCallSessionId(Ljava/lang/String;)Landroid/telephony/CallState$Builder;

    move-result-object p1

    .line 2925
    invoke-virtual {v1}, Landroid/telephony/CallState;->getImsCallServiceType()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/telephony/CallState$Builder;->setImsCallServiceType(I)Landroid/telephony/CallState$Builder;

    move-result-object p1

    .line 2926
    invoke-virtual {v1}, Landroid/telephony/CallState;->getImsCallType()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/telephony/CallState$Builder;->setImsCallType(I)Landroid/telephony/CallState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CallState$Builder;->build()Landroid/telephony/CallState;

    move-result-object p1

    .line 2919
    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2932
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-ge v2, p4, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0x1b

    .line 2933
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2935
    invoke-virtual {p0, v3, p3, p2}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 2938
    :try_start_1
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mPid:I

    if-ne v4, v5, :cond_2

    if-nez v1, :cond_2

    .line 2939
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 2941
    :cond_2
    :goto_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-nez v1, :cond_3

    .line 2942
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 2941
    :goto_2
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStatesChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2947
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2928
    :cond_4
    const-string p0, "There is no active call to report CallQuality"

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2929
    monitor-exit v0

    return-void

    .line 2952
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2953
    monitor-exit v0

    :goto_3
    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCallState(IIILjava/lang/String;)V
    .locals 8

    .line 1741
    const-string/jumbo v0, "notifyCallState()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1749
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1750
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p3, v1, p1

    .line 1751
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p4, v1, p1

    .line 1752
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x24

    .line 1753
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    const v6, 0x7fffffff

    if-eqz v5, :cond_2

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p2, :cond_2

    if-eq v5, v6, :cond_2

    .line 1759
    :try_start_1
    invoke-virtual {p0, v4, p1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v5

    .line 1760
    iget-object v7, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v7, p3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1762
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    const/4 v5, 0x6

    .line 1765
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v5, p2, :cond_1

    if-eq v5, v6, :cond_1

    .line 1771
    :try_start_3
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1773
    :catch_1
    :try_start_4
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1778
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1779
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1780
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    return-void

    .line 1779
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public notifyCallStateForAllSubs(ILjava/lang/String;)V
    .locals 8

    .line 1697
    const-string/jumbo v0, "notifyCallState()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1706
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x24

    .line 1707
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    const v6, 0x7fffffff

    if-eqz v5, :cond_3

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_3

    .line 1713
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p2

    goto :goto_1

    :cond_2
    const-string v5, ""

    .line 1714
    :goto_1
    iget-object v7, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v7, p1, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1716
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    const/4 v5, 0x6

    .line 1720
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v5, v6, :cond_1

    .line 1724
    :try_start_3
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1726
    :catch_1
    :try_start_4
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1730
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1731
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, -0x1

    .line 1735
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    return-void

    .line 1731
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public notifyCallbackModeRestarted(IIIJ)V
    .locals 5

    .line 3672
    const-string/jumbo v0, "notifyCallbackModeRestarted()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3678
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3679
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 3681
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mECBMDuration:[J

    aput-wide p4, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 3683
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSCBMDuration:[J

    aput-wide p4, v1, p1

    .line 3686
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0x28

    .line 3688
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 3691
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3, p4, p5, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallbackModeRestarted(IJI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3693
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3697
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3698
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void

    .line 3697
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public notifyCallbackModeStarted(IIIJ)V
    .locals 5

    .line 3640
    const-string/jumbo v0, "notifyCallbackModeStarted()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3646
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3647
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 3649
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mECBMDuration:[J

    aput-wide p4, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 3651
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSCBMDuration:[J

    aput-wide p4, v1, p1

    .line 3654
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0x28

    .line 3656
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 3659
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3, p4, p5, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallbackModeStarted(IJI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3661
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3665
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3666
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void

    .line 3665
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public notifyCallbackModeStopped(IIII)V
    .locals 5

    .line 3703
    const-string/jumbo v0, "notifyCallbackModeStopped()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3709
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3710
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    .line 3712
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    aput p4, v3, p1

    .line 3713
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mECBMDuration:[J

    aput-wide v1, v3, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 3715
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSCBMReason:[I

    aput p4, v3, p1

    .line 3716
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSCBMDuration:[J

    aput-wide v1, v3, p1

    .line 3719
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0x28

    .line 3721
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 3724
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3, p4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallbackModeStopped(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3726
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3730
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3731
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void

    .line 3730
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public notifyCarrierConfigChanged(IIII)V
    .locals 6

    .line 3471
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3474
    const-string/jumbo v0, "notifyCarrierConfigChanged"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3475
    const-string p0, "Caller has no notify permission!"

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    return-void

    .line 3483
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3484
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3485
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 3487
    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry$Record;->matchCarrierConfigChangeListener()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    goto :goto_0

    .line 3491
    :cond_1
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->carrierConfigChangeListener:Lcom/android/internal/telephony/ICarrierConfigChangeListener;

    invoke-interface {v5, p1, p2, p3, p4}, Lcom/android/internal/telephony/ICarrierConfigChangeListener;->onCarrierConfigChanged(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3494
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3497
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3498
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 3472
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid phoneId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyCarrierNetworkChange(Z)V
    .locals 4

    .line 1974
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 1975
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionIdList()[I

    move-result-object v0

    .line 1974
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    .line 1976
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1977
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1978
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1984
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1985
    invoke-virtual {p0, v3, p1}, Lcom/android/server/TelephonyRegistry;->notifyCarrierNetworkChangeWithPermission(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1979
    :cond_1
    const-string/jumbo p0, "notifyCarrierNetworkChange without carrier privilege"

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1981
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final notifyCarrierNetworkChangeWithPermission(IZ)V
    .locals 7

    .line 2000
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2001
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2002
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aput-boolean p2, v2, v0

    .line 2007
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v6, 0x11

    .line 2008
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2010
    invoke-virtual {p0, v5, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 2012
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2014
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2018
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2019
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCarrierNetworkChangeWithSubId(IZ)V
    .locals 1

    .line 1991
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1996
    invoke-virtual {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->notifyCarrierNetworkChangeWithPermission(IZ)V

    return-void

    .line 1992
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyCarrierNetworkChange without carrier privilege on subId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V
    .locals 8

    .line 3351
    const-string/jumbo v0, "notifyCarrierPrivilegesChanged"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3364
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 3366
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3367
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3370
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3372
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 3375
    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry$Record;->matchCarrierPrivilegesCallback()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    .line 3376
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    goto :goto_0

    .line 3381
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    .line 3382
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    array-length v7, p3

    .line 3383
    invoke-static {p3, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 3381
    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/List;[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3385
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3388
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3389
    monitor-exit v0

    :goto_1
    return-void

    .line 3368
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid slot index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3389
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCarrierRoamingNtnAvailableServicesChanged(I[I)V
    .locals 7

    .line 3830
    const-string/jumbo v0, "notifyCarrierRoamingNtnEligibleStateChanged"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3831
    const-string/jumbo p0, "notifyCarrierRoamingNtnAvailableServicesChanged: caller does not have required permissions."

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    return-void

    .line 3841
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3842
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v1

    .line 3843
    invoke-virtual {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3844
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid phone ID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 3845
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3847
    :cond_1
    new-instance v2, Landroid/util/IntArray;

    array-length v3, p2

    invoke-direct {v2, v3}, Landroid/util/IntArray;-><init>(I)V

    .line 3848
    invoke-virtual {v2, p2}, Landroid/util/IntArray;->addAll([I)V

    .line 3849
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3850
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v6, 0x2c

    .line 3851
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3853
    invoke-virtual {p0, v5, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    .line 3855
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnAvailableServicesChanged([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3857
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3861
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3862
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCarrierRoamingNtnEligibleStateChanged(IZ)V
    .locals 7

    .line 3791
    const-string/jumbo v0, "notifyCarrierRoamingNtnEligibleStateChanged"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3792
    const-string/jumbo p0, "notifyCarrierRoamingNtnEligibleStateChanged: caller does not have required permissions."

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    return-void

    .line 3802
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3803
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v1

    .line 3804
    invoke-virtual {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3805
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid phone ID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 3806
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3808
    :cond_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    aput-boolean p2, v2, v1

    .line 3809
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v6, 0x2b

    .line 3810
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3812
    invoke-virtual {p0, v5, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    .line 3814
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnEligibleStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3816
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3820
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3821
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCarrierRoamingNtnModeChanged(IZ)V
    .locals 7

    .line 3743
    const-string/jumbo v0, "notifyCarrierRoamingNtnModeChanged"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3751
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3752
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v1

    .line 3753
    invoke-virtual {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3754
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid phone ID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 3755
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3757
    :cond_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    aput-boolean p2, v2, v1

    .line 3758
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v6, 0x2a

    .line 3759
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3761
    invoke-virtual {p0, v5, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    .line 3763
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnModeChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3765
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3769
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3770
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCarrierRoamingNtnSignalStrengthChanged(ILandroid/telephony/satellite/NtnSignalStrength;)V
    .locals 7

    .line 3873
    const-string/jumbo v0, "notifyCarrierRoamingNtnSignalStrengthChanged"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3874
    const-string/jumbo p0, "notifyCarrierRoamingNtnSignalStrengthChanged: caller does not have required permissions."

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    return-void

    .line 3884
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3885
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v1

    .line 3886
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    aput-object p2, v2, v1

    .line 3887
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v6, 0x2d

    .line 3888
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3890
    invoke-virtual {p0, v5, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 3892
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3894
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3898
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3899
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCarrierServiceChanged(ILjava/lang/String;I)V
    .locals 6

    .line 3394
    const-string/jumbo v0, "notifyCarrierServiceChanged"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3395
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3404
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    .line 3406
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3407
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    .line 3408
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3407
    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3409
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 3411
    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry$Record;->matchCarrierPrivilegesCallback()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    .line 3412
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    goto :goto_0

    .line 3416
    :cond_3
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->carrierPrivilegesCallback:Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    invoke-interface {v5, p2, p3}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3418
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3421
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3422
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 1

    const v0, 0x7fffffff

    .line 2023
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .locals 7

    .line 2027
    const-string/jumbo v0, "notifyCellInfoForSubscriber()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 2037
    const-string/jumbo p2, "notifyCellInfoForSubscriber() received a null list"

    invoke-static {p2}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 2038
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2041
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2042
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2043
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2044
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2045
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v6, 0xb

    .line 2046
    invoke-virtual {p0, v5, v6}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2048
    invoke-virtual {p0, v5, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 2049
    invoke-virtual {p0, v5, v6}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x1d

    .line 2050
    invoke-virtual {p0, v5, v6}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    .line 2056
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2058
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2063
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2064
    monitor-exit v1

    :goto_1
    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V
    .locals 1

    const/4 v0, 0x0

    .line 2405
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V

    return-void
.end method

.method public final notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V
    .locals 6

    .line 2410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2411
    invoke-static {v1, p2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2410
    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2412
    const-string/jumbo v0, "notifyCellLocation()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2415
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2416
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2417
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object p3, p3, v0

    .line 2418
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 2419
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object p2, p3, v0

    .line 2420
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_2
    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v5, 0x5

    .line 2421
    invoke-virtual {p0, v4, v5}, Lcom/android/server/TelephonyRegistry;->validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2423
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .line 2424
    invoke-virtual {p0, v4, v5}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1d

    .line 2425
    invoke-virtual {p0, v4, v5}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 2431
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2433
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2438
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2439
    monitor-exit v2

    :goto_2
    return-void

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyCellularIdentifierDisclosedChanged(IILandroid/telephony/CellularIdentifierDisclosure;)V
    .locals 6

    .line 3961
    const-string/jumbo v0, "notifyCellularIdentifierDisclosedChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3965
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3966
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p3, :cond_1

    .line 3968
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CellularIdentifierDisclosure is null, subId="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", phoneId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 3971
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3974
    :cond_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x2f

    .line 3975
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3977
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 3983
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellularIdentifierDisclosedChanged(Landroid/telephony/CellularIdentifierDisclosure;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3985
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3990
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3991
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyDataActivityForSubscriber(II)V
    .locals 7

    .line 2228
    const-string/jumbo v0, "notifyDataActivity()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2231
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2232
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2233
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2234
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v2, v0

    .line 2235
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v6, 0x8

    .line 2237
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2239
    invoke-virtual {p0, v5, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 2241
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2243
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2248
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2249
    monitor-exit v1

    :goto_1
    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyDataActivityForSubscriberWithSlot(III)V
    .locals 6

    .line 2262
    const-string/jumbo v0, "notifyDataActivityWithSlot()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2266
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2267
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2268
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p3, v1, p1

    .line 2269
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x8

    .line 2270
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2272
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2274
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2276
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2281
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2282
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V
    .locals 8

    .line 2295
    const-string/jumbo v0, "notifyDataConnection()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2299
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2300
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 2301
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getTransportType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2302
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    .line 2301
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 2303
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2304
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PreciseDataConnectionState;

    .line 2305
    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 2306
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :cond_1
    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v7, 0xd

    .line 2307
    invoke-virtual {v6, v7}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2309
    invoke-virtual {p0, v6, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatchRelaxed(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 2311
    :try_start_1
    iget-object v7, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v7, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 2313
    :catch_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2317
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2319
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IILandroid/telephony/PreciseDataConnectionState;)V

    .line 2321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyDataConnectionForSubscriber: phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " subId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2323
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2324
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v4, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2329
    :cond_3
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v2

    if-eqz v2, :cond_4

    .line 2330
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2339
    :cond_4
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 2340
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v2

    const/16 v4, 0x11

    if-nez v2, :cond_5

    .line 2341
    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v2

    .line 2342
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    :cond_5
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2347
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 2348
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v5

    .line 2349
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2350
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v5}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    const/4 p3, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x4

    .line 2357
    filled-new-array {p3, v2, v5, v4, v3}, [I

    move-result-object p3

    move v2, v3

    :goto_2
    const/4 v4, 0x5

    if-ge v2, v4, :cond_9

    .line 2363
    aget v4, p3, v2

    .line 2364
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2366
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {p3}, Landroid/telephony/PreciseDataConnectionState;->getNetworkType()I

    move-result p3

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    move p3, v3

    move v4, p3

    .line 2371
    :goto_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v1, v1, p1

    if-ne v1, v4, :cond_a

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v1, v1, p1

    if-eq v1, p3, :cond_d

    .line 2373
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2374
    invoke-static {v4}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2375
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2377
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2378
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2379
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_b
    :goto_4
    if-ge v3, v2, :cond_c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v6, 0x7

    .line 2380
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2382
    invoke-virtual {p0, v5, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_b

    .line 2387
    :try_start_3
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, v4, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2389
    :catch_1
    :try_start_4
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2394
    :cond_c
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v4, p2, p1

    .line 2395
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput p3, p2, p1

    .line 2397
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2400
    :cond_d
    monitor-exit v0

    :goto_5
    return-void

    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public notifyDataEnabled(IIZI)V
    .locals 6

    .line 3130
    const-string/jumbo v0, "notifyDataEnabled()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3139
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3140
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3141
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    aput-boolean p3, v1, p1

    .line 3142
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aput p4, v1, p1

    .line 3143
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x22

    .line 3144
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3146
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 3148
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataEnabledChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3150
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3155
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3156
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyDisconnectCause(IIII)V
    .locals 6

    .line 2618
    const-string/jumbo v0, "notifyDisconnectCause()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2621
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2622
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2623
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput p3, v1, p1

    .line 2624
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput p4, p3, p1

    .line 2625
    iget-object p3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-ge v1, p4, :cond_2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x1a

    .line 2626
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2628
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2630
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v4, v4, p1

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v5, v5, p1

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2633
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2638
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2639
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V
    .locals 8

    .line 2133
    const-string/jumbo v0, "notifyDisplayInfoChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDisplayInfoChanged: PhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " telephonyDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2141
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2142
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2143
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2144
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object p3, v1, p1

    .line 2145
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x15

    .line 2146
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2148
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2150
    :try_start_1
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 2151
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    .line 2150
    invoke-virtual {v5, v6, v7}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isDisplayInfoNrAdvancedSupported(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2152
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 2153
    invoke-virtual {p0, p3}, Lcom/android/server/TelephonyRegistry;->getBackwardCompatibleTelephonyDisplayInfo(Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v6

    .line 2152
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2156
    :cond_2
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2159
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2164
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2165
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyEmergencyNumberList(II)V
    .locals 7

    .line 2814
    const-string/jumbo v0, "notifyEmergencyNumberList()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2817
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.calling"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 2818
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.messaging"

    .line 2819
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2825
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2826
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2827
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2829
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 2831
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x19

    .line 2832
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2834
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 2836
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2842
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2848
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2849
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 7

    .line 2643
    const-string/jumbo v0, "notifyImsCallDisconnectCause()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2646
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2647
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2648
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    .line 2650
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsReasonInfo is null, subId="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", phoneId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 2651
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2652
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2654
    :cond_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v2, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2655
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x1c

    .line 2656
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2658
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 2664
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2666
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2671
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2672
    monitor-exit v1

    :goto_1
    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyLinkCapacityEstimateChanged(IILjava/util/List;)V
    .locals 6

    .line 3208
    const-string/jumbo v0, "notifyLinkCapacityEstimateChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3217
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3218
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3219
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    invoke-interface {v1, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3220
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x25

    .line 3221
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3223
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 3225
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onLinkCapacityEstimateChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3227
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3232
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3233
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyMediaQualityStatusChanged(IILandroid/telephony/ims/MediaQualityStatus;)V
    .locals 6

    .line 3591
    const-string/jumbo v0, "notifyMediaQualityStatusChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3595
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3596
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3597
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 3599
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallState;

    .line 3600
    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 3606
    invoke-virtual {v2}, Landroid/telephony/CallState;->getImsCallSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3608
    invoke-virtual {p3}, Landroid/telephony/ims/MediaQualityStatus;->getCallSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3609
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3610
    invoke-virtual {p3}, Landroid/telephony/ims/MediaQualityStatus;->getMediaSessionType()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 3612
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SessionId mismatch active call:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " media quality:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3613
    invoke-virtual {p3}, Landroid/telephony/ims/MediaQualityStatus;->getCallSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3612
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3614
    monitor-exit v0

    return-void

    .line 3617
    :cond_4
    const-string p0, "There is no active call to report CallQaulity"

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3618
    monitor-exit v0

    return-void

    .line 3622
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-ge v3, v2, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x27

    .line 3623
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3625
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_6

    .line 3627
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3629
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3634
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3635
    monitor-exit v0

    :goto_3
    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .locals 6

    .line 2069
    const-string/jumbo v0, "notifyMessageWaitingChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2076
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2077
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2078
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v1, p1

    .line 2079
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v5, 0x3

    .line 2080
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2082
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2084
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2086
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2091
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2092
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyOemHookRawEventForSubscriber(II[B)V
    .locals 6

    .line 2707
    const-string/jumbo v0, "notifyOemHookRawEventForSubscriber"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2711
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2712
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2713
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0xf

    .line 2717
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2719
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2721
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2723
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2728
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2729
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyOpportunisticSubscriptionInfoChanged()V
    .locals 6

    .line 1110
    const-string/jumbo v0, "notifyOpportunisticSubscriptionInfoChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1115
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_1

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOpptSubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 1117
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1119
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 1120
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1121
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 1122
    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry$Record;->matchOnOpportunisticSubscriptionsChangedListener()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 1125
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 1126
    invoke-interface {v5}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1130
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1134
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1135
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 5

    .line 2855
    const-string/jumbo v0, "notifyOutgoingEmergencyCall()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2858
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2859
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2860
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aput-object p3, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2862
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0x1d

    .line 2864
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 2867
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2869
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2873
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2874
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void

    .line 2873
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 5

    .line 2880
    const-string/jumbo v0, "notifyOutgoingEmergencySms()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2884
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2885
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2886
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aput-object p3, v1, p1

    .line 2887
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v4, 0x1e

    .line 2889
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 2892
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2894
    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2899
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2900
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 6

    .line 2733
    const-string/jumbo v0, "notifyPhoneCapabilityChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2741
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2742
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 2744
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x16

    .line 2745
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2748
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2750
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2754
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2755
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V
    .locals 8

    .line 3063
    const-string/jumbo v0, "notifyPhysicalChannelConfig()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3067
    :cond_0
    invoke-static {p3}, Lcom/android/server/TelephonyRegistry;->getLocationSanitizedConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3073
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3074
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3075
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    invoke-interface {v2, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3076
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v6, 0x21

    .line 3077
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3079
    invoke-virtual {p0, v5, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 3087
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 3088
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->shouldSanitizeLocationForPhysicalChannelConfig(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v7, p3

    .line 3087
    :goto_1
    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 3091
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3096
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3097
    monitor-exit v1

    :goto_2
    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyPreciseCallState(II[I[Ljava/lang/String;[I[I)V
    .locals 14

    move/from16 v1, p2

    .line 2458
    const-string/jumbo v2, "notifyPreciseCallState()"

    invoke-virtual {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x0

    .line 2462
    aget v4, p3, v2

    const/4 v9, 0x1

    .line 2463
    aget v5, p3, v9

    const/4 v10, 0x2

    .line 2464
    aget v6, p3, v10

    .line 2466
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v11

    .line 2467
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2469
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v4, v3, p1

    .line 2470
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v5, v3, p1

    .line 2471
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v6, v3, p1

    .line 2472
    new-instance v3, Landroid/telephony/PreciseCallState;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct/range {v3 .. v8}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    .line 2477
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v7, v7, p1

    invoke-virtual {v3, v7}, Landroid/telephony/PreciseCallState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2479
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aput-object v3, v7, p1

    move v3, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_1
    move v3, v2

    .line 2482
    :goto_0
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    if-nez v7, :cond_2

    .line 2483
    const-string/jumbo v4, "notifyPreciseCallState: mCallQuality is null, skipping call attributes"

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    move v4, v2

    goto/16 :goto_1

    .line 2489
    :cond_2
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v7

    if-eq v7, v9, :cond_3

    .line 2491
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v2, v7, p1

    .line 2492
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v8

    aput-object v8, v7, p1

    .line 2494
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2495
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2496
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    const/4 v8, -0x1

    if-eq v5, v8, :cond_5

    if-eqz v5, :cond_5

    .line 2499
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v5, v5, p1

    .line 2500
    new-instance v12, Landroid/telephony/CallState$Builder;

    aget v13, p3, v9

    invoke-direct {v12, v13}, Landroid/telephony/CallState$Builder;-><init>(I)V

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v13, v13, p1

    .line 2502
    invoke-virtual {v12, v13}, Landroid/telephony/CallState$Builder;->setNetworkType(I)Landroid/telephony/CallState$Builder;

    move-result-object v12

    .line 2503
    invoke-virtual {v12, v5}, Landroid/telephony/CallState$Builder;->setCallQuality(Landroid/telephony/CallQuality;)Landroid/telephony/CallState$Builder;

    move-result-object v5

    .line 2504
    invoke-virtual {v5, v9}, Landroid/telephony/CallState$Builder;->setCallClassification(I)Landroid/telephony/CallState$Builder;

    move-result-object v5

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    .line 2507
    aget-object v12, p4, v9

    .line 2508
    invoke-virtual {v5, v12}, Landroid/telephony/CallState$Builder;->setImsCallSessionId(Ljava/lang/String;)Landroid/telephony/CallState$Builder;

    move-result-object v5

    aget v12, p5, v9

    .line 2510
    invoke-virtual {v5, v12}, Landroid/telephony/CallState$Builder;->setImsCallServiceType(I)Landroid/telephony/CallState$Builder;

    move-result-object v5

    aget v12, p6, v9

    .line 2512
    invoke-virtual {v5, v12}, Landroid/telephony/CallState$Builder;->setImsCallType(I)Landroid/telephony/CallState$Builder;

    move-result-object v5

    .line 2515
    :cond_4
    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-virtual {v5}, Landroid/telephony/CallState$Builder;->build()Landroid/telephony/CallState;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eq v6, v8, :cond_7

    if-eqz v6, :cond_7

    .line 2519
    new-instance v5, Landroid/telephony/CallState$Builder;

    aget v6, p3, v10

    invoke-direct {v5, v6}, Landroid/telephony/CallState$Builder;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v6, v6, p1

    .line 2521
    invoke-virtual {v5, v6}, Landroid/telephony/CallState$Builder;->setNetworkType(I)Landroid/telephony/CallState$Builder;

    move-result-object v5

    .line 2522
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/CallState$Builder;->setCallQuality(Landroid/telephony/CallQuality;)Landroid/telephony/CallState$Builder;

    move-result-object v5

    .line 2523
    invoke-virtual {v5, v10}, Landroid/telephony/CallState$Builder;->setCallClassification(I)Landroid/telephony/CallState$Builder;

    move-result-object v5

    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    if-eqz p6, :cond_6

    .line 2526
    aget-object v6, p4, v10

    .line 2527
    invoke-virtual {v5, v6}, Landroid/telephony/CallState$Builder;->setImsCallSessionId(Ljava/lang/String;)Landroid/telephony/CallState$Builder;

    move-result-object v5

    aget v6, p5, v10

    .line 2529
    invoke-virtual {v5, v6}, Landroid/telephony/CallState$Builder;->setImsCallServiceType(I)Landroid/telephony/CallState$Builder;

    move-result-object v5

    aget v6, p6, v10

    .line 2531
    invoke-virtual {v5, v6}, Landroid/telephony/CallState$Builder;->setImsCallType(I)Landroid/telephony/CallState$Builder;

    move-result-object v5

    .line 2534
    :cond_6
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v5}, Landroid/telephony/CallState$Builder;->build()Landroid/telephony/CallState;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eq v4, v8, :cond_9

    if-eqz v4, :cond_9

    .line 2538
    new-instance v4, Landroid/telephony/CallState$Builder;

    aget v5, p3, v2

    invoke-direct {v4, v5}, Landroid/telephony/CallState$Builder;-><init>(I)V

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v5, v5, p1

    .line 2540
    invoke-virtual {v4, v5}, Landroid/telephony/CallState$Builder;->setNetworkType(I)Landroid/telephony/CallState$Builder;

    move-result-object v4

    .line 2541
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telephony/CallState$Builder;->setCallQuality(Landroid/telephony/CallQuality;)Landroid/telephony/CallState$Builder;

    move-result-object v4

    .line 2542
    invoke-virtual {v4, v2}, Landroid/telephony/CallState$Builder;->setCallClassification(I)Landroid/telephony/CallState$Builder;

    move-result-object v4

    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    if-eqz p6, :cond_8

    .line 2545
    aget-object v5, p4, v2

    .line 2546
    invoke-virtual {v4, v5}, Landroid/telephony/CallState$Builder;->setImsCallSessionId(Ljava/lang/String;)Landroid/telephony/CallState$Builder;

    move-result-object v4

    aget v5, p5, v2

    .line 2548
    invoke-virtual {v4, v5}, Landroid/telephony/CallState$Builder;->setImsCallServiceType(I)Landroid/telephony/CallState$Builder;

    move-result-object v4

    aget v5, p6, v2

    .line 2550
    invoke-virtual {v4, v5}, Landroid/telephony/CallState$Builder;->setImsCallType(I)Landroid/telephony/CallState$Builder;

    move-result-object v4

    .line 2553
    :cond_8
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4}, Landroid/telephony/CallState$Builder;->build()Landroid/telephony/CallState;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2555
    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v9

    .line 2559
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CallState;

    .line 2560
    invoke-virtual {v6}, Landroid/telephony/CallState;->getCallState()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_a

    goto :goto_1

    .line 2567
    :cond_b
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    :goto_1
    if-eqz v3, :cond_d

    .line 2572
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_c
    :goto_2
    if-ge v6, v5, :cond_d

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v8, 0xc

    .line 2573
    invoke-virtual {v7, v8}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2575
    invoke-virtual {p0, v7, v1, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_c

    .line 2577
    :try_start_1
    iget-object v8, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v9, v9, p1

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2579
    :catch_0
    :try_start_2
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    if-eqz v4, :cond_11

    .line 2587
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_e
    :goto_3
    if-ge v2, v4, :cond_11

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v7, 0x1b

    .line 2588
    invoke-virtual {v6, v7}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2590
    invoke-virtual {p0, v6, v1, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_e

    .line 2597
    :try_start_3
    iget v7, v6, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    iget v8, p0, Lcom/android/server/TelephonyRegistry;->mPid:I

    if-ne v7, v8, :cond_f

    if-nez v5, :cond_f

    .line 2598
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-static {v7}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    .line 2600
    :cond_f
    iget-object v7, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-nez v5, :cond_10

    .line 2601
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    goto :goto_4

    :cond_10
    move-object v8, v5

    .line 2600
    :goto_4
    invoke-interface {v7, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStatesChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2606
    :catch_1
    :try_start_4
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2612
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2613
    monitor-exit v11

    :goto_5
    return-void

    :goto_6
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public notifyRadioPowerStateChanged(III)V
    .locals 6

    .line 2783
    const-string/jumbo v0, "notifyRadioPowerStateChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2791
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2792
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2793
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:[I

    aput p3, v1, p1

    .line 2795
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x18

    .line 2796
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2798
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatchRelaxed(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2800
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2802
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2808
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2809
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 14

    move/from16 v1, p2

    .line 2959
    const-string/jumbo v2, "notifyRegistrationFailed()"

    invoke-virtual {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 2966
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/CellIdentity;->sanitizeLocationInfo()Landroid/telephony/CellIdentity;

    move-result-object v2

    .line 2970
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v3

    .line 2972
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registration Failed for phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "primaryPlmn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " chosenPlmn="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " domain="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " causeCode="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " additionalCauseCode="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2977
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v4, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2980
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2981
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2982
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v11, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v12, v5, 0x1

    move-object v13, v6

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x1f

    .line 2983
    invoke-virtual {v13, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2985
    invoke-virtual {p0, v13, v1, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 2987
    :try_start_1
    iget-object v5, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v6, 0x1

    .line 2988
    invoke-virtual {p0, v13, v6}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v6, p3

    goto :goto_1

    :cond_1
    move-object v6, v2

    .line 2987
    :goto_1
    invoke-interface/range {v5 .. v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 2993
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move v5, v12

    goto :goto_0

    .line 2998
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2999
    monitor-exit v3

    :goto_3
    return-void

    :goto_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifySatelliteStateChanged(Z)V
    .locals 6

    .line 3561
    const-string/jumbo v0, "notifySatelliteStateChanged"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3562
    const-string/jumbo p0, "notifySatelliteStateChanged: Caller has no notify permission!"

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    return-void

    .line 3569
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mWasSatelliteEnabledNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3570
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mIsSatelliteEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3572
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3573
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3574
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 3576
    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry$Record;->matchSatelliteStateChangeListener()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    goto :goto_0

    .line 3580
    :cond_1
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->satelliteStateChangeListener:Lcom/android/internal/telephony/ISatelliteStateChangeListener;

    invoke-interface {v5, p1}, Lcom/android/internal/telephony/ISatelliteStateChangeListener;->onSatelliteEnabledStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3582
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3585
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3586
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifySecurityAlgorithmsChanged(IILandroid/telephony/SecurityAlgorithmUpdate;)V
    .locals 6

    .line 3915
    const-string/jumbo v0, "notifySecurityAlgorithmChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3919
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3920
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p3, :cond_1

    .line 3922
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SecurityAlgorithmUpdate is null, subId="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", phoneId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 3925
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3928
    :cond_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x2e

    .line 3929
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3931
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 3937
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSecurityAlgorithmsChanged(Landroid/telephony/SecurityAlgorithmUpdate;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3939
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3944
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3945
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .locals 11

    .line 1784
    const-string/jumbo v0, "notifyServiceState()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1788
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1790
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1791
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyServiceStateForSubscriber: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1796
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v4, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1803
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v3, p1

    .line 1805
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1807
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :cond_1
    :goto_0
    if-ge v6, v4, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v8, 0x1

    .line 1812
    invoke-virtual {v7, v8}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1814
    invoke-virtual {p0, v7, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    const/16 v9, 0x1d

    .line 1818
    :try_start_2
    invoke-virtual {p0, v7, v9}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1819
    new-instance v8, Landroid/telephony/ServiceState;

    invoke-direct {v8, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 1820
    :cond_2
    invoke-virtual {p0, v7, v9}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1822
    invoke-virtual {p3, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v8

    goto :goto_1

    .line 1824
    :cond_3
    invoke-virtual {p3, v8}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v8

    .line 1831
    :goto_1
    iget-object v9, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v9, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1833
    :catch_0
    :try_start_3
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1839
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyServiceStateForSubscriber: INVALID subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1842
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1844
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1845
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1846
    :try_start_4
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1848
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    return-void

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 1845
    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1848
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1849
    throw p0
.end method

.method public notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    .locals 7

    .line 1915
    const-string/jumbo v0, "notifySignalStrength()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1924
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1926
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p3, v1, p1

    .line 1927
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x9

    .line 1932
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1934
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 1941
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1943
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    const/4 v5, 0x2

    .line 1946
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1948
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    .line 1950
    :try_start_3
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    const/16 v6, 0x63

    if-ne v5, v6, :cond_3

    const/4 v5, -0x1

    .line 1957
    :cond_3
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1959
    :catch_1
    :try_start_4
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1964
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySignalStrengthForPhoneId: invalid phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1966
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1967
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1968
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    return-void

    .line 1967
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public notifySimActivationStateChangedForPhoneId(IIII)V
    .locals 7

    .line 1854
    const-string/jumbo v0, "notifySimActivationState()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1862
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_1

    .line 1871
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1868
    :cond_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput p4, v2, p1

    goto :goto_0

    .line 1865
    :cond_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput p4, v2, p1

    .line 1873
    :goto_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-ge v4, v3, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_4

    const/16 v6, 0x12

    .line 1881
    :try_start_1
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1883
    invoke-virtual {p0, v5, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1889
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V

    :cond_4
    if-ne p3, v1, :cond_3

    const/16 v6, 0x13

    .line 1892
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1894
    invoke-virtual {p0, v5, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1900
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1903
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1907
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "notifySimActivationStateForPhoneId: INVALID phoneId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1909
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1910
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifySimultaneousCellularCallingSubscriptionsChanged([I)V
    .locals 6

    .line 3241
    const-string/jumbo v0, "notifySimultaneousCellularCallingSubscriptionsChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3257
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3258
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSimultaneousCellularCallingSubIds:[I

    .line 3259
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x29

    .line 3260
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 3263
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSimultaneousCallingStateChanged([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3265
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3269
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 3270
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifySrvccStateChanged(II)V
    .locals 7

    .line 2677
    const-string/jumbo v0, "notifySrvccStateChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2683
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2684
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2685
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2686
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput p2, v2, v0

    .line 2687
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v6, 0x10

    .line 2688
    invoke-virtual {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2690
    invoke-virtual {p0, v5, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 2695
    :try_start_1
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2697
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2702
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2703
    monitor-exit v1

    :goto_1
    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 6

    .line 1080
    const-string/jumbo v0, "notifySubscriptionInfoChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1085
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_1

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 1087
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1086
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1089
    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 1090
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1091
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 1092
    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 1095
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v5}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1099
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1103
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1104
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    .locals 6

    .line 2096
    const-string/jumbo v0, "notifyUserMobileDataStateChanged()"

    invoke-virtual {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2103
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2104
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2105
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean p3, v1, p1

    .line 2106
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v5, 0x14

    .line 2107
    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2109
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(Lcom/android/server/TelephonyRegistry$Record;II)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 2111
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2113
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2118
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2119
    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onMultiSimConfigChanged()V
    .locals 9

    .line 707
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 708
    :try_start_0
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 709
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ne v1, v2, :cond_0

    .line 710
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 716
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 717
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 718
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 719
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 720
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 721
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 722
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 723
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 724
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 725
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_1

    .line 726
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    goto :goto_0

    .line 728
    :cond_1
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    new-array v2, v2, [Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 730
    :goto_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 731
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 732
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/CellIdentity;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 733
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 734
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/PreciseCallState;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 735
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 736
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 737
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 738
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 739
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 740
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/CallQuality;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 741
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 742
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 743
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 744
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/TelephonyDisplayInfo;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 745
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    .line 746
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    .line 747
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    .line 748
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    .line 749
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    .line 750
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    .line 751
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMDuration:[J

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMDuration:[J

    .line 752
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:[I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:[I

    .line 753
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    .line 754
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    .line 755
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    if-eqz v2, :cond_2

    .line 756
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/satellite/NtnSignalStrength;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    goto :goto_1

    .line 759
    :cond_2
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    new-array v2, v2, [Landroid/telephony/satellite/NtnSignalStrength;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    .line 762
    :goto_1
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v2, v1, :cond_3

    .line 763
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 764
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 765
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 766
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 767
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 768
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 769
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 770
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 771
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 772
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 773
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 774
    monitor-exit v0

    return-void

    .line 778
    :cond_3
    :goto_2
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v1, v2, :cond_4

    .line 779
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 780
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v3, v2, v1

    .line 781
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    const/4 v4, -0x1

    aput v4, v2, v1

    .line 782
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v3, v2, v1

    .line 783
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v3, v2, v1

    .line 784
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v2, v1

    .line 785
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v5, v2, v1

    .line 786
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    const/4 v5, 0x0

    aput-object v5, v2, v1

    .line 787
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v3, v2, v1

    .line 788
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v3, v2, v1

    .line 789
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v3, v2, v1

    .line 790
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object v5, v2, v1

    .line 791
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 792
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v2, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 793
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput v4, v2, v1

    .line 794
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput v4, v2, v1

    .line 795
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput v4, v2, v1

    .line 796
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v7

    aput-object v7, v2, v1

    .line 797
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMediaQualityStatus:Ljava/util/List;

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v2, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 798
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallStateLists:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 799
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v3, v2, v1

    .line 800
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v7

    aput-object v7, v2, v1

    .line 801
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v3, v2, v1

    .line 802
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v3, v2, v1

    .line 803
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v3, v2, v1

    .line 804
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance v7, Landroid/telephony/BarringInfo;

    invoke-direct {v7}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {v2, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 806
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:[Z

    aput-boolean v3, v2, v1

    .line 807
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object v5, v2, v1

    .line 808
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mIsDataEnabled:[Z

    aput-boolean v3, v2, v1

    .line 809
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataEnabledReason:[I

    aput v3, v2, v1

    .line 810
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 811
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeReason:[I

    aput v4, v2, v1

    .line 812
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAllowedNetworkTypeValue:[J

    const-wide/16 v7, -0x1

    aput-wide v7, v2, v1

    .line 813
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLinkCapacityEstimateLists:Ljava/util/List;

    sget-object v7, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    invoke-interface {v2, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 814
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierPrivilegeStates:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    new-array v8, v3, [I

    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 815
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierServiceStates:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 816
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMReason:[I

    aput v3, v2, v1

    .line 817
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mECBMDuration:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 818
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:[I

    const/4 v4, 0x2

    aput v4, v2, v1

    .line 819
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnMode:[Z

    aput-boolean v3, v2, v1

    .line 820
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnEligible:[Z

    aput-boolean v3, v2, v1

    .line 821
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnAvailableServices:Ljava/util/List;

    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    invoke-interface {v2, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 822
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCarrierRoamingNtnSignalStrength:[Landroid/telephony/satellite/NtnSignalStrength;

    new-instance v4, Landroid/telephony/satellite/NtnSignalStrength;

    invoke-direct {v4, v3}, Landroid/telephony/satellite/NtnSignalStrength;-><init>(I)V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 825
    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final remove(Landroid/os/IBinder;)V
    .locals 6

    .line 1670
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1671
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1673
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 1674
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v5, p1, :cond_1

    .line 1680
    iget-object v1, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1682
    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1689
    :catch_0
    :cond_0
    :goto_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1690
    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1693
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public removeCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;)V
    .locals 2

    .line 3464
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3465
    invoke-interface {p1}, Lcom/android/internal/telephony/ICarrierConfigChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method public removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V
    .locals 2

    .line 3341
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3342
    iget-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v1, "removeCarrierPrivilegesCallback"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    invoke-interface {p1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 0

    .line 1025
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method public removeSatelliteStateChangeListener(Lcom/android/internal/telephony/ISatelliteStateChangeListener;Ljava/lang/String;)V
    .locals 2

    .line 3553
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 3554
    const-string/jumbo v1, "removeSatelliteStateChangeListener"

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/TelephonyRegistry;->enforceCallingOrSelfAtLeastReadBasicPhoneStatePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    invoke-interface {p1}, Lcom/android/internal/telephony/ISatelliteStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method public systemRunning()V
    .locals 2

    .line 958
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 959
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 962
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 963
    const-string/jumbo v1, "systemRunning register for intents"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final validateEventAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 3

    .line 4498
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4501
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    .line 4502
    iget v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 4503
    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchTelephonyCallbackEvent(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 4510
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4511
    throw p0
.end method

.method public final validatePhoneId(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 4517
    invoke-virtual {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
