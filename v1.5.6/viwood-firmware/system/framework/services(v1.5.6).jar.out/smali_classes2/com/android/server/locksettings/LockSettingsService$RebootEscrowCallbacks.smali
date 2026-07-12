.class public Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 3865
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public isUserSecure(I)Z
    .locals 0

    .line 3868
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misUserSecure(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result p0

    return p0
.end method

.method public onRebootEscrowRestored(B[BI)V
    .locals 6

    .line 3875
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-direct {v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;-><init>(B)V

    .line 3876
    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->recreateDirectly([B)V

    .line 3877
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p1

    monitor-enter p1

    .line 3878
    :try_start_0
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgetGateKeeperService(Lcom/android/server/locksettings/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3879
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3880
    const-string p1, "LockSettingsService"

    const-string p2, "Restored synthetic password for user %d using reboot escrow"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3881
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, v2, v5}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mloadPasswordMetrics(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    invoke-static {p0, v2, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$monCredentialVerified(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 3879
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
