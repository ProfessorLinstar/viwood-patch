.class public Lcom/android/server/BinaryTransparencyService$1;
.super Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;
.source "BinaryTransparencyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    .line 1529
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$1;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 4

    .line 1538
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 1540
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintSensorProperties;->from(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Landroid/hardware/fingerprint/FingerprintSensorProperties;

    move-result-object v0

    .line 1541
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$1;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 1543
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorProperties;->getSensorType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mtoFingerprintSensorType(Lcom/android/server/BinaryTransparencyService;I)I

    move-result v2

    const/4 v3, 0x1

    .line 1541
    invoke-static {v1, v0, v3, v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mlogBiometricProperties(Lcom/android/server/BinaryTransparencyService;Landroid/hardware/biometrics/SensorProperties;II)V

    goto :goto_0

    :cond_0
    return-void
.end method
