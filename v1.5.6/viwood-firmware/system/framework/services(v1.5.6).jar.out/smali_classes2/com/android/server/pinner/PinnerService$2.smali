.class public Lcom/android/server/pinner/PinnerService$2;
.super Ljava/lang/Object;
.source "PinnerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pinner/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$2;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 215
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "runtime_native"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v0, "pin_shared_anon_size"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$2;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {p0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mrefreshPinAnonConfig(Lcom/android/server/pinner/PinnerService;)V

    :cond_0
    return-void
.end method
