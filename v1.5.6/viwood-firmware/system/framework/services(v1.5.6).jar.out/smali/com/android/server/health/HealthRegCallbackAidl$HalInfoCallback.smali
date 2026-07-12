.class public Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;
.super Landroid/hardware/health/IHealthInfoCallback$Stub;
.source "HealthRegCallbackAidl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/health/HealthRegCallbackAidl;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;->this$0:Lcom/android/server/health/HealthRegCallbackAidl;

    invoke-direct {p0}, Landroid/hardware/health/IHealthInfoCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthRegCallbackAidl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 120
    const-string p0, "c8d014c7bb950af538396f3e5a409c69b7b9335c"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public healthInfoChanged(Landroid/hardware/health/HealthInfo;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;->this$0:Lcom/android/server/health/HealthRegCallbackAidl;

    invoke-static {p0}, Lcom/android/server/health/HealthRegCallbackAidl;->-$$Nest$fgetmServiceInfoCallback(Lcom/android/server/health/HealthRegCallbackAidl;)Lcom/android/server/health/HealthInfoCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Landroid/hardware/health/HealthInfo;)V

    return-void
.end method
