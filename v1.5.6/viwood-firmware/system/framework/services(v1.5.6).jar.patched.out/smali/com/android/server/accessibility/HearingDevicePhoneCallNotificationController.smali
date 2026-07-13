.class public Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;
.super Ljava/lang/Object;
.source "HearingDevicePhoneCallNotificationController.java"


# instance fields
.field public final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field public final mTelephonyListener:Landroid/telephony/TelephonyCallback;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 71
    new-instance v1, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;

    invoke-direct {v1, p1, v0}, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mTelephonyListener:Landroid/telephony/TelephonyCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyCallback;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mTelephonyListener:Landroid/telephony/TelephonyCallback;

    .line 78
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public startListenForCallState()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController;->mTelephonyListener:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method
