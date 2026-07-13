.class public Lcom/android/server/hdmi/HdmiControlService$19;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$19;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 1036
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$19;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v0, "transition_arc_to_earc_tx"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmTransitionFromArcToEarcTxEnabled(Lcom/android/server/hdmi/HdmiControlService;Z)V

    return-void
.end method
