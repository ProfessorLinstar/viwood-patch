.class public Lcom/android/server/hdmi/HdmiControlService$27;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$isEnabled:I

.field public final synthetic val$listeners:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;I)V
    .locals 0

    .line 3665
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$27;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$listeners:Ljava/util/Collection;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$isEnabled:I

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2

    .line 3667
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$27;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmIsCecAvailable(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 3668
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$listeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3669
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$27;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$listeners:Ljava/util/Collection;

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$isEnabled:I

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmIsCecAvailable(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result v1

    invoke-static {p1, v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minvokeHdmiControlStatusChangeListenerLocked(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;IZ)V

    :cond_1
    return-void
.end method
