.class public final Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "ExternalDisplayPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ExternalDisplayPolicy;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/ExternalDisplayPolicy;Lcom/android/server/display/ExternalDisplayPolicy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;)V

    return-void
.end method


# virtual methods
.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 2

    .line 389
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    .line 390
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-static {v0}, Lcom/android/server/display/ExternalDisplayPolicy;->-$$Nest$fgetmStatus(Lcom/android/server/display/ExternalDisplayPolicy;)I

    move-result v0

    .line 391
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-static {v1, p1}, Lcom/android/server/display/ExternalDisplayPolicy;->-$$Nest$fputmStatus(Lcom/android/server/display/ExternalDisplayPolicy;I)V

    const/4 v1, 0x4

    if-le v1, v0, :cond_0

    if-gt v1, p1, :cond_0

    .line 393
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-static {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->-$$Nest$mdisableExternalDisplays(Lcom/android/server/display/ExternalDisplayPolicy;)V

    :cond_0
    return-void
.end method
