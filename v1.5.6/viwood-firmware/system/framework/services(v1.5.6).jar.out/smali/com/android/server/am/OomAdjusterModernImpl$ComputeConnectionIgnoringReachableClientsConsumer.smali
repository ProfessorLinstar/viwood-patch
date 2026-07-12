.class public Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;
.super Ljava/lang/Object;
.source "OomAdjusterModernImpl.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public hasReachableClient:Z

.field public mArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterModernImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 679
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->mArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    const/4 p1, 0x0

    .line 680
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->hasReachableClient:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)V
    .locals 11

    .line 689
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->mArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 690
    iget-object v7, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    .line 691
    iget-wide v5, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    .line 692
    iget v9, v0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 694
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 695
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->hasReachableClient:Z

    return-void

    .line 699
    :cond_0
    invoke-static {p1, v3, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->-$$Nest$smunimportantConnectionLSP(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 703
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    const/4 v8, 0x0

    const/16 v10, 0x3e9

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v1 .. v10}, Lcom/android/server/am/OomAdjusterModernImpl$Connection;->computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZII)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 677
    check-cast p1, Lcom/android/server/am/OomAdjusterModernImpl$Connection;

    check-cast p2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public init(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->mArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    const/4 p1, 0x0

    .line 684
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->hasReachableClient:Z

    return-void
.end method
