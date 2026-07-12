.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->$r8$lambda$hzKCz0gy8JwjgnnYzUAAoIgGgh4(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;)Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p0

    return-object p0
.end method
