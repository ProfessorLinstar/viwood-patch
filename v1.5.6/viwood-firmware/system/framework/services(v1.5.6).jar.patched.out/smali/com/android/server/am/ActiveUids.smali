.class public final Lcom/android/server/am/ActiveUids;
.super Ljava/lang/Object;
.source "ActiveUids.java"


# instance fields
.field public final mActiveUids:Landroid/util/SparseArray;

.field public final mPostChangesToAtm:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$NgdZNvkwS6lqiR_KpbqmBNFCCTU(Ljava/io/PrintWriter;Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 117
    const-string v0, "      proc="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 41
    iput-object p1, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/ActiveUids;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 43
    iput-boolean p2, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 98
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UidRecord;

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v3, p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz p5, :cond_1

    .line 106
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 108
    :cond_1
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 110
    :cond_2
    const-string v3, "    UID "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {p1, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 111
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 112
    const-string v3, "      curProcState="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 113
    const-string v3, " curCapability="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v3

    invoke-static {p1, v3}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 115
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 116
    new-instance v3, Lcom/android/server/am/ActiveUids$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/am/ActiveUids$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .locals 3

    const/4 v0, 0x0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UidRecord;

    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eq v2, p3, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {v1, p1, p4, p5}, Lcom/android/server/am/UidRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get(I)Lcom/android/server/am/UidRecord;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UidRecord;

    return-object p0
.end method

.method public keyAt(I)I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public put(ILcom/android/server/am/UidRecord;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidActive(II)V

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 57
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidInactive(I)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public valueAt(I)Lcom/android/server/am/UidRecord;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UidRecord;

    return-object p0
.end method
