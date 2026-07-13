.class public Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;
.super Ljava/lang/Object;
.source "OomAdjusterModernImpl.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterModernImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 716
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)V
    .locals 12

    .line 720
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iget-object v4, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 721
    iget v10, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mCachedAdj:I

    .line 722
    iget-object v7, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    .line 723
    iget-wide v5, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    .line 724
    iget v9, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 725
    iget-boolean v8, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mFullUpdate:Z

    .line 727
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    .line 728
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v11

    .line 730
    invoke-static {p1, p2, v4}, Lcom/android/server/am/OomAdjusterModernImpl;->-$$Nest$smunimportantConnectionLSP(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 734
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v10}, Lcom/android/server/am/OomAdjusterModernImpl$Connection;->computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZII)V

    .line 737
    iget-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-static {p1, v3, v0}, Lcom/android/server/am/OomAdjusterModernImpl;->-$$Nest$mupdateProcStateSlotIfNecessary(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/ProcessRecord;I)V

    .line 738
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-static {p0, v3, v11}, Lcom/android/server/am/OomAdjusterModernImpl;->-$$Nest$mupdateAdjSlotIfNecessary(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 715
    check-cast p1, Lcom/android/server/am/OomAdjusterModernImpl$Connection;

    check-cast p2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
