.class public Lcom/android/server/policy/SideFpsEventHandler$2;
.super Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;
.source "SideFpsEventHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/SideFpsEventHandler;

.field public final synthetic val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isPowerbuttonFps()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$2$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SideFpsEventHandler$2$1;-><init>(Lcom/android/server/policy/SideFpsEventHandler$2;)V

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    .line 245
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p0}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmSideFpsEventHandlerReady(Lcom/android/server/policy/SideFpsEventHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
