.class public Lcom/android/server/hdmi/HotplugDetectionAction$1;
.super Ljava/lang/Object;
.source "HotplugDetectionAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HotplugDetectionAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPollingFinished(Ljava/util/List;)V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->-$$Nest$mcheckHotplug(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V

    .line 144
    const-string p0, "HotPlugDetectionAction"

    const-string p1, "Finish poll all devices."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
