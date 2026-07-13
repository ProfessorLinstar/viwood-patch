.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getSession()Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    return-object p0
.end method
