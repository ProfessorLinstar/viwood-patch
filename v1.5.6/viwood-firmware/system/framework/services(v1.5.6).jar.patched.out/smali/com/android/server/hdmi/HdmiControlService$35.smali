.class public Lcom/android/server/hdmi/HdmiControlService$35;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 5055
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$35;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 5058
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$35;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$monDisableEarc(Lcom/android/server/hdmi/HdmiControlService;)V

    return-void
.end method
