.class public final Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# instance fields
.field public adj:I

.field public app:Lcom/android/server/am/ProcessRecord;

.field public appUid:I

.field public foregroundActivities:Z

.field public logUid:I

.field public mAdjType:Ljava/lang/String;

.field public mHasVisibleActivities:Z

.field public mState:Lcom/android/server/am/ProcessStateRecord;

.field public procState:I

.field public processStateCurTop:I

.field public schedGroup:I

.field public final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    .line 1729
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/server/am/ProcessRecord;IZZIIIII)V
    .locals 0

    .line 1746
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    .line 1747
    iput p2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1748
    iput-boolean p3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1749
    iput-boolean p4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    .line 1750
    iput p5, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1751
    iput p6, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1752
    iput p7, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    .line 1753
    iput p8, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    .line 1754
    iput p9, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    .line 1755
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 1756
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    return-void
.end method

.method public onOtherActivity(J)V
    .locals 2

    .line 1853
    iget p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 p2, 0x10

    if-le p1, p2, :cond_1

    .line 1854
    iput p2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1855
    const-string p1, "cch-act"

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 1856
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget p2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne p1, p2, :cond_1

    .line 1857
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    sget-object p2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise procstate to cached activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 1883
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    return-void
.end method

.method public onPausedActivity()V
    .locals 5

    .line 1800
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string/jumbo v1, "pause-activity"

    const/16 v2, 0xc8

    if-le v0, v2, :cond_1

    .line 1801
    iput v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1802
    iput-object v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 1803
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_1

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to pause-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    :cond_1
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v0, v2, :cond_3

    .line 1808
    iput v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1809
    iput-object v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 1810
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v1, :cond_3

    .line 1811
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    sget-object v1, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to pause-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    :cond_3
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 1816
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    :cond_4
    const/4 v0, 0x1

    .line 1818
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    const/4 v0, 0x0

    .line 1819
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    return-void
.end method

.method public onStoppingActivity(Z)V
    .locals 5

    .line 1823
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string/jumbo v1, "stop-activity"

    const/16 v2, 0xc8

    if-le v0, v2, :cond_1

    .line 1824
    iput v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1825
    iput-object v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 1826
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_1

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to stop-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_3

    .line 1839
    iget p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v0, 0xf

    if-le p1, v0, :cond_3

    .line 1840
    iput v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1841
    iput-object v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 1842
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne p1, v0, :cond_3

    .line 1843
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to stop-activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    .line 1848
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    const/4 p1, 0x0

    .line 1849
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    return-void
.end method

.method public onVisibleActivity(I)V
    .locals 5

    .line 1761
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string/jumbo v1, "vis-activity"

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 1762
    iput v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 1763
    iput-object v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 1764
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_1

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to vis-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    :cond_1
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v0, v2, :cond_3

    .line 1769
    iput v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 1770
    iput-object v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    .line 1771
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v1, :cond_3

    .line 1772
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    sget-object v1, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to vis-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    :cond_3
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 1777
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    :cond_4
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    .line 1782
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1783
    const-string/jumbo p1, "resumed-split-screen-activity"

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_6

    .line 1787
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1788
    const-string/jumbo p1, "perceptible-freeform-activity"

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/high16 v0, 0x2000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x5

    .line 1792
    iput p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 1793
    const-string/jumbo p1, "vis-multi-window-activity"

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    :cond_7
    :goto_0
    const/4 p1, 0x1

    .line 1795
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 1796
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    return-void
.end method
