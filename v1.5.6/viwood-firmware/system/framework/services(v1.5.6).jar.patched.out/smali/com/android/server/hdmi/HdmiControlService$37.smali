.class public Lcom/android/server/hdmi/HdmiControlService$37;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 5172
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$37;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5175
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$37;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method
