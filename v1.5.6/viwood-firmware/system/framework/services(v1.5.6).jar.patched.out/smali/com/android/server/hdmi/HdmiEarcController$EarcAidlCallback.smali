.class public final Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;
.super Landroid/hardware/tv/hdmi/earc/IEArcCallback$Stub;
.source "HdmiEarcController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiEarcController;


# direct methods
.method public static synthetic $r8$lambda$8vjd6gbVvZl0hxTNM9b_Uqcoh9U(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;[BI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;->lambda$onCapabilitiesReported$1([BI)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhYwqByGtnoO73BiDrSvktyH_xU(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;BI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;->lambda$onStateChange$0(BI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiEarcController;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;->this$0:Lcom/android/server/hdmi/HdmiEarcController;

    invoke-direct {p0}, Landroid/hardware/tv/hdmi/earc/IEArcCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 234
    :try_start_0
    const-string v0, "101230f18c7b8438921e517e80eea4ccc7c1e463"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$onCapabilitiesReported$1([BI)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;->this$0:Lcom/android/server/hdmi/HdmiEarcController;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiEarcController;->-$$Nest$fgetmService(Lcom/android/server/hdmi/HdmiEarcController;)Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->handleEarcCapabilitiesReported([BI)V

    return-void
.end method

.method public final synthetic lambda$onStateChange$0(BI)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;->this$0:Lcom/android/server/hdmi/HdmiEarcController;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiEarcController;->-$$Nest$fgetmService(Lcom/android/server/hdmi/HdmiEarcController;)Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->handleEarcStateChange(II)V

    return-void
.end method

.method public onCapabilitiesReported([BI)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;->this$0:Lcom/android/server/hdmi/HdmiEarcController;

    new-instance v1, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;[BI)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiEarcController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStateChange(BI)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;->this$0:Lcom/android/server/hdmi/HdmiEarcController;

    new-instance v1, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;BI)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiEarcController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method
