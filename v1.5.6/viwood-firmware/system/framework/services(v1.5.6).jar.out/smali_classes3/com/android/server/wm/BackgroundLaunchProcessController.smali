.class public Lcom/android/server/wm/BackgroundLaunchProcessController;
.super Ljava/lang/Object;
.source "BackgroundLaunchProcessController.java"


# static fields
.field public static final CHECK_FOR_FGS_START:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;


# instance fields
.field public final mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

.field public mBackgroundStartPrivileges:Landroid/util/ArrayMap;

.field public mBalOptInBoundClientUids:Landroid/util/IntArray;

.field public final mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 114
    new-instance v0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v3, 0x1

    const-wide/16 v4, 0x2710

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZJ)V

    sput-object v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->CHECK_FOR_FGS_START:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/IntPredicate;Lcom/android/server/wm/BackgroundActivityStartCallback;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;

    .line 97
    iput-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    return-void
.end method


# virtual methods
.method public addBoundClientUid(ILjava/lang/String;J)V
    .locals 3

    const-wide/32 v0, 0xf8fa52e

    .line 274
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 271
    invoke-static {v0, v1, p2, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x200

    and-long p2, p3, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    .line 276
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-nez p2, :cond_1

    .line 277
    new-instance p2, Landroid/util/IntArray;

    invoke-direct {p2}, Landroid/util/IntArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 279
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p2, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    .line 280
    iget-object p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    :cond_2
    return-void
.end method

.method public addOrUpdateAllowBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .locals 2

    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const-string v1, "backgroundStartPrivileges does not allow anything"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 303
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public areBackgroundActivityStartsAllowed(IILjava/lang/String;ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;ZZZJJJ)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 128
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetcheckOtherExemptions(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p8, :cond_0

    .line 129
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string p2, "process instrumenting with background activity starts privileges"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 133
    :cond_0
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetcheckOtherExemptions(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetisCheckingForFgsStart(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/BackgroundLaunchProcessController;->isBackgroundStartAllowedByToken(ILjava/lang/String;Z)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 145
    :cond_1
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetcheckVisibility(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->isBoundByForegroundUid()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 147
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 p1, 0xd

    .line 148
    const-string p2, "process bound by foreground uid"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 153
    :cond_2
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetisCheckingForFgsStart(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p0

    if-nez p0, :cond_3

    if-nez p7, :cond_4

    :cond_3
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetcheckOtherExemptions(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p6, :cond_4

    if-eqz p4, :cond_4

    .line 156
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 p1, 0x9

    const-string p2, "process has activity in foreground task"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 162
    :cond_4
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetcheckOtherExemptions(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    if-ne p4, p0, :cond_6

    cmp-long p0, p11, p9

    if-gtz p0, :cond_5

    cmp-long p0, p13, p9

    if-lez p0, :cond_6

    .line 167
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    .line 168
    invoke-static {p11, p12, p13, p14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    sub-long/2addr p0, p2

    .line 170
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetgracePeriod(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)J

    move-result-wide p2

    cmp-long p2, p0, p2

    if-gez p2, :cond_6

    .line 171
    new-instance p2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "within "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetgracePeriod(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "ms grace period ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms)"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    invoke-direct {p2, p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p2

    .line 177
    :cond_6
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public canCloseSystemDialogsByToken(I)Z
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 328
    :cond_0
    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->getOriginatingTokensThatAllowBal()Ljava/util/List;

    move-result-object v1

    .line 333
    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartCallback;->canCloseSystemDialogs(Ljava/util/Collection;I)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 331
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 335
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearBalOptInBoundClientUids()V
    .locals 1

    .line 261
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 265
    :cond_0
    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 267
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    const-string v0, "Background activity start tokens (token: originating token):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 345
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 348
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    const-string p2, "BoundClientUids:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getOriginatingTokensThatAllowBal()Ljava/util/List;
    .locals 4

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 239
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackgroundStartPrivileges;

    .line 240
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->getOriginatingToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final isBackgroundStartAllowedByToken(ILjava/lang/String;Z)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 3

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v0, :cond_a

    .line 189
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0xc

    if-eqz p3, :cond_3

    .line 195
    iget-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p1, -0x1

    if-lez p1, :cond_2

    .line 196
    iget-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundFgsStarts()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p2, "process allowed by token"

    invoke-direct {p1, v0, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    move p1, p2

    goto :goto_0

    .line 200
    :cond_2
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit p0

    return-object p1

    .line 202
    :cond_3
    iget-object p3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    if-nez p3, :cond_6

    .line 204
    iget-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_1
    add-int/lit8 p2, p1, -0x1

    if-lez p1, :cond_5

    .line 205
    iget-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/BackgroundStartPrivileges;

    .line 206
    invoke-virtual {p1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 207
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p2, "process allowed by token"

    invoke-direct {p1, v0, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    monitor-exit p0

    return-object p1

    :cond_4
    move p1, p2

    goto :goto_1

    .line 210
    :cond_5
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit p0

    return-object p1

    .line 212
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->getOriginatingTokensThatAllowBal()Ljava/util/List;

    move-result-object p3

    .line 213
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 215
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit p0

    return-object p1

    .line 220
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    invoke-interface {v1, p3, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartCallback;->isActivityStartAllowed(Ljava/util/Collection;ILjava/lang/String;)Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->allowed()Z

    move-result p2

    if-nez p2, :cond_8

    .line 223
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit p0

    return-object p1

    .line 225
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_9

    .line 226
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process allowed by callback (token ignored) tokens: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    monitor-exit p0

    return-object p1

    .line 229
    :cond_9
    new-instance p2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process allowed by callback (token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") tokens: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    monitor-exit p0

    return-object p2

    .line 191
    :cond_a
    :goto_2
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit p0

    return-object p1

    .line 232
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isBoundByForegroundUid()Z
    .locals 4

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 251
    iget-object v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 256
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAllowBackgroundStartPrivileges(Landroid/os/Binder;)V
    .locals 1

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 317
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
