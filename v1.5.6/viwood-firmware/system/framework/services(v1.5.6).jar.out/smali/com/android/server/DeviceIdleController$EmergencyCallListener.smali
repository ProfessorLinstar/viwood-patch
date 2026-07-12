.class public Lcom/android/server/DeviceIdleController$EmergencyCallListener;
.super Landroid/telephony/TelephonyCallback;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public volatile mIsEmergencyCallActive:Z

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 2439
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$EmergencyCallListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public isEmergencyCallActive()Z
    .locals 0

    .line 2468
    iget-boolean p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    return p0
.end method

.method public onCallStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 2459
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2460
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 2461
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 2462
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2463
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 1

    const/4 p1, 0x1

    .line 2447
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 2449
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 2450
    :try_start_0
    iget-object p2, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fputmActiveReason(Lcom/android/server/DeviceIdleController;I)V

    .line 2451
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->this$0:Lcom/android/server/DeviceIdleController;

    const-string p2, "emergency call"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2452
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
