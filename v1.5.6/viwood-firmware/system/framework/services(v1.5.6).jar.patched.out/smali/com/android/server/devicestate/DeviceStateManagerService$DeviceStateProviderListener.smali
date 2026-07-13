.class public final Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;
.super Ljava/lang/Object;
.source "DeviceStateManagerService.java"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStateProvider$Listener;


# instance fields
.field public mCurrentBaseState:I

.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    .line 1232
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x2710

    if-gt p1, v0, :cond_0

    .line 1254
    iput p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->mCurrentBaseState:I

    .line 1255
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$msetBaseState(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    return-void

    .line 1251
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSupportedDeviceStatesChanged([Landroid/hardware/devicestate/DeviceState;I)V
    .locals 1

    .line 1239
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1242
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mupdateSupportedStates(Lcom/android/server/devicestate/DeviceStateManagerService;[Landroid/hardware/devicestate/DeviceState;I)V

    return-void

    .line 1240
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supported device states must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
