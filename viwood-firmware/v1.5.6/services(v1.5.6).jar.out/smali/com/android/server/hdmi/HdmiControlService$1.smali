.class public Lcom/android/server/hdmi/HdmiControlService$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method
