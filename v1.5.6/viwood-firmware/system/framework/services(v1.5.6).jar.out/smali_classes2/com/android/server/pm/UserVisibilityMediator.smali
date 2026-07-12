.class public final Lcom/android/server/pm/UserVisibilityMediator;
.super Ljava/lang/Object;
.source "UserVisibilityMediator.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final DBG:Z

.field static final INITIAL_CURRENT_USER_ID:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCurrentUserId:I

.field public final mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mLock:Ljava/lang/Object;

.field public final mStartedInvisibleProfileUserIds:Ljava/util/List;

.field public final mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

.field public final mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

.field public final mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

.field public final mVisibleBackgroundUsersEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$RwzqKlQYDyxdAxTJhHVafFhaCRE(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V
    .locals 0

    .line 1045
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;->onUserVisibilityChanged(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 103
    const-class v0, Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 197
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    .line 198
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result v1

    .line 197
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/UserVisibilityMediator;-><init>(ZZLandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(ZZLandroid/os/Handler;)V
    .locals 3

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    .line 174
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    .line 193
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 204
    iput-boolean p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot have visibleBackgroundUserOnDefaultDisplayEnabled without visibleBackgroundUsersOnDisplaysEnabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 214
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 215
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    goto :goto_1

    .line 217
    :cond_2
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 218
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 220
    :goto_1
    sget-boolean p1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    .line 221
    iput-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mHandler:Landroid/os/Handler;

    .line 223
    invoke-virtual {v1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p1, :cond_4

    .line 226
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p1, "UserVisibilityMediator created with DBG on"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1100
    const-string p1, "No "

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    const-string p1, " mappings"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1105
    :cond_0
    const-string v0, "Number of "

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    const-string p2, " mappings: "

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1109
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-gtz p2, :cond_1

    return-void

    .line 1112
    :cond_1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p2, 0x0

    .line 1113
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 1114
    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1115
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1116
    const-string v1, " -> "

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1118
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1120
    :cond_2
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static isProfile(II)Z
    .locals 1

    .line 0
    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSpecialUserId(I)Z
    .locals 1

    .line 0
    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    const/4 v0, -0x3

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static secondaryDisplayMappingStatusToString(I)Ljava/lang/String;
    .locals 2

    .line 1200
    const-class v0, Lcom/android/server/pm/UserVisibilityMediator;

    const-string v1, "SECONDARY_DISPLAY_MAPPING_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
    .locals 3

    .line 971
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 972
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v1, "adding listener %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public assignUserToDisplayOnStart(IIIIZ)I
    .locals 9

    .line 236
    invoke-static {p1}, Lcom/android/server/pm/UserVisibilityMediator;->isSpecialUserId(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "user id cannot be generic: %d"

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 236
    invoke-static {v0, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserVisibilityMediator;->validateUserStartMode(I)V

    .line 253
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/pm/UserVisibilityMediator;->resolveProfileGroupId(IIZ)I

    move-result p5

    .line 254
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 255
    sget-object v2, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v3, "assignUserToDisplayOnStart(%d, %d, %s, %d): actualProfileGroupId=%d"

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, p2, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object p2

    .line 255
    invoke-static {v2, v3, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 263
    :try_start_0
    invoke-virtual {p0, p1, p5, p3, p4}, Lcom/android/server/pm/UserVisibilityMediator;->getUserVisibilityOnStartLocked(IIII)I

    move-result v2

    if-eqz v0, :cond_1

    .line 266
    sget-object v3, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "result of getUserVisibilityOnStartLocked(%s)"

    .line 267
    invoke-static {v2}, Lcom/android/server/pm/UserManagerInternal;->userAssignmentResultToString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 266
    invoke-static {v3, v4, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_f

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    goto/16 :goto_3

    .line 274
    :cond_2
    invoke-virtual {p0, p1, p5, p3, p4}, Lcom/android/server/pm/UserVisibilityMediator;->canAssignUserToDisplayLocked(IIII)I

    move-result v5

    if-eqz v0, :cond_3

    .line 277
    sget-object v6, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "mapping result: %s"

    .line 278
    invoke-static {v5}, Lcom/android/server/pm/UserVisibilityMediator;->secondaryDisplayMappingStatusToString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 277
    invoke-static {v6, v7, v8}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-ne v5, v3, :cond_4

    .line 281
    monitor-exit p2

    return v3

    .line 284
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object v3

    const/4 v6, 0x2

    if-eq p3, v1, :cond_6

    if-eq p3, v6, :cond_5

    if-eq p3, v4, :cond_7

    .line 306
    sget-object p5, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v4, "invalid userStartMode passed to assignUserToDisplayOnStart: %d"

    .line 307
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 306
    invoke-static {p5, v4, p3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 299
    :cond_5
    iget-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    if-eqz p3, :cond_9

    .line 300
    invoke-static {p1, p5}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 301
    sget-object p3, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p5, "adding user %d to list of invisible profiles"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p3, p5, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 289
    :cond_6
    iput p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    :cond_7
    if-eqz v0, :cond_8

    .line 293
    sget-object p3, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v4, "adding visible user / profile group id mapping (%d -> %d)"

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 293
    invoke-static {p3, v4, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_8
    iget-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p1, p5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_9
    :goto_1
    if-eq v5, v1, :cond_b

    if-eq v5, v6, :cond_a

    .line 327
    sget-object p1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p3, "invalid resut from canAssignUserToDisplayLocked: %d"

    .line 328
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    .line 327
    invoke-static {p1, p3, p4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    if-eqz v0, :cond_d

    .line 323
    sget-object p1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p3, "don\'t need to update mUsersOnSecondaryDisplays"

    invoke-static {p1, p3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    if-eqz v0, :cond_c

    .line 314
    sget-object p3, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p5, "adding user / display mapping (%d -> %d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, p5, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :cond_c
    iget-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p1, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object p1

    .line 332
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V

    if-eqz v0, :cond_e

    .line 337
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "returning %s"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerInternal;->userAssignmentResultToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    return v2

    .line 271
    :cond_f
    :goto_3
    :try_start_1
    monitor-exit p2

    return v2

    .line 332
    :goto_4
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final canAssignUserToDisplayLocked(IIII)I
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez p4, :cond_4

    .line 444
    iget-boolean v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    if-ne p3, v4, :cond_1

    .line 446
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserVisibilityMediator;->getUserStartedOnDisplay(I)I

    move-result v4

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_0

    if-eq v4, p2, :cond_0

    .line 449
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 451
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 449
    const-string p2, "canAssignUserToDisplayLocked(): cannot start user %d visible on default display because user %d already did so"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-nez v4, :cond_2

    .line 456
    iget-boolean v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v5, :cond_2

    .line 457
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v2

    :cond_2
    if-nez v4, :cond_4

    .line 469
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_3

    .line 470
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 470
    const-string p2, "Ignoring mapping for default display for user %d starting as %s"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v0

    :cond_4
    if-nez p1, :cond_5

    .line 478
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Cannot assign system user to secondary display (%d)"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_5
    if-ne p4, v3, :cond_6

    .line 482
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Cannot assign to INVALID_DISPLAY (%d)"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 485
    :cond_6
    iget v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne p1, v4, :cond_7

    .line 486
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Cannot assign current user (%d) to other displays"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 490
    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p4, :cond_8

    .line 494
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p1, "Profile user can only be started in the default display"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 498
    :cond_8
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_9

    .line 499
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Don\'t need to map profile user %d to default display"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return v0

    .line 504
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    if-nez v0, :cond_b

    .line 506
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 508
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 506
    const-string p2, "canAssignUserToDisplayLocked(%d, %d, %d, %d) is trying to check mUsersAssignedToDisplayOnStart when it\'s not set"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 513
    :cond_b
    :goto_1
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_f

    .line 514
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    .line 515
    iget-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p3

    .line 516
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_c

    .line 517
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 517
    const-string v5, "%d: assignedUserId=%d, assignedDisplayId=%d"

    invoke-static {v0, v5, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-ne p4, p3, :cond_d

    .line 521
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 522
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 521
    const-string p2, "Cannot assign user %d to display %d because such display is already assigned to user %d"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_d
    if-ne p1, p2, :cond_e

    .line 526
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 527
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 526
    const-string p2, "Cannot assign user %d to display %d because such user is as already assigned to display %d"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_f
    return v2
.end method

.method public final dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1006
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_5

    .line 1007
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p1, "dispatchVisibilityChanged(): ignoring, no listeners"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1012
    sget-boolean v1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v1, :cond_1

    .line 1013
    sget-object v1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 1015
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, p2, v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 1013
    const-string v3, "dispatchVisibilityChanged(): visibleUsersBefore=%s, visibleUsersAfter=%s, %d listeners (%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 1018
    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_3

    .line 1019
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 1020
    invoke-virtual {p2, v3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 1021
    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1024
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1025
    invoke-virtual {p2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 1026
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    .line 1027
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V
    .locals 3

    .line 1034
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x758b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1035
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 1036
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 1037
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1036
    const-string v1, "dispatchVisibilityChanged(%d -> %b): sending to %d listeners"

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 1039
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    .line 1045
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2, p3}, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1050
    const-string v0, "UserVisibilityMediator"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1053
    const-string v0, "DBG: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1056
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1057
    :try_start_0
    const-string v1, "Current user id: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1060
    const-string v1, "Visible users: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1063
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const-string/jumbo v2, "started visible user / profile group"

    const-string/jumbo v3, "u"

    const-string/jumbo v4, "pg"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1066
    const-string v1, "Profiles started invisible: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1070
    :cond_0
    :goto_0
    const-string v1, "Supports visible background users on displays: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    iget-boolean v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1073
    const-string v1, "Supports visible background users on default display: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    iget-boolean v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1076
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    const-string/jumbo v2, "user / display"

    const-string/jumbo v3, "u"

    const-string v4, "d"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    const-string v2, "extra display / user"

    const-string v3, "d"

    const-string/jumbo v4, "u"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 1081
    const-string v2, "Number of listeners: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    if-lez v1, :cond_2

    .line 1084
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1086
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1087
    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1090
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1092
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1092
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1125
    instance-of p2, p1, Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_0

    .line 1126
    check-cast p1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    .line 1129
    :cond_0
    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final getCurrentUserId()I
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1154
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMainDisplayAssignedToUser(I)I
    .locals 3

    .line 814
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 815
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserVisibilityMediator;->getUserStartedOnDisplay(I)I

    move-result p0

    .line 821
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_1

    .line 823
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 824
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v2, "getMainDisplayAssignedToUser(%d): returning INVALID_DISPLAY for current user user %d was started on DEFAULT_DISPLAY"

    .line 826
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 824
    invoke-static {v0, v2, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1

    :catchall_0
    move-exception p0

    .line 821
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return v2

    .line 834
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_3

    return v1

    .line 838
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    .line 840
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public getUserAssignedToDisplay(I)I
    .locals 1

    const/4 v0, 0x1

    .line 890
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    move-result p0

    return p0
.end method

.method public final getUserAssignedToDisplay(IZ)I
    .locals 6

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    .line 906
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_2

    .line 909
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getCurrentUserId()I

    move-result p0

    return p0

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 913
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 914
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-eq v2, p1, :cond_3

    goto :goto_1

    .line 917
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 918
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserVisibilityMediator;->isStartedVisibleProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 919
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 920
    :cond_4
    sget-boolean v3, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v3, :cond_5

    .line 921
    sget-object v3, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v4, "getUserAssignedToDisplay(%d): skipping user %d because it\'s a profile"

    .line 923
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 921
    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 926
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    const/16 v2, -0x2710

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_7

    .line 929
    monitor-exit v0

    return v1

    .line 931
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_9

    .line 933
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_8

    .line 934
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p2, "getUserAssignedToDisplay(%d): no user assigned to display, returning USER_NULL instead"

    .line 935
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 934
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return v2

    .line 940
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getCurrentUserId()I

    move-result p0

    .line 941
    sget-boolean p2, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p2, :cond_a

    .line 942
    sget-object p2, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v0, "getUserAssignedToDisplay(%d): no user assigned to display, returning current user (%d) instead"

    .line 943
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 942
    invoke-static {p2, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return p0

    .line 931
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getUserStartedOnDisplay(I)I
    .locals 1

    const/4 v0, 0x0

    .line 897
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    move-result p0

    return p0
.end method

.method public final getUserVisibilityOnStartLocked(IIII)I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    if-eqz p4, :cond_0

    .line 362
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 363
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 362
    const-string p2, "cannot start user (%d) as BACKGROUND_USER on secondary display (%d) (it should be BACKGROUND_USER_VISIBLE"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne p3, v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    if-nez p4, :cond_3

    if-eqz v5, :cond_3

    .line 369
    iget-boolean v6, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserLocked(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 371
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 372
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 371
    const-string/jumbo p2, "trying to start current user (%d) visible in background on default display"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 376
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-nez v6, :cond_3

    .line 377
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 378
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cannot start full user (%d) visible on default display"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_3
    if-ne p3, v4, :cond_4

    move v2, v4

    :cond_4
    if-eqz p4, :cond_6

    if-eqz v2, :cond_5

    .line 386
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 387
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 388
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 386
    const-string p2, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: cannot start foreground user on secondary display"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 391
    :cond_5
    iget-boolean v6, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v6, :cond_6

    .line 392
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 392
    const-string p2, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: called on device that doesn\'t support multiple users on multiple displays"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 399
    :cond_6
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz p4, :cond_7

    .line 401
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 403
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 401
    const-string p2, "canStartUserLocked(%d, %d, %s, %d) failed: cannot start profile user on secondary display"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_7
    if-eq p3, v4, :cond_b

    if-eq p3, v1, :cond_a

    if-eq p3, v3, :cond_8

    goto :goto_1

    .line 413
    :cond_8
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/UserVisibilityMediator;->isParentVisibleOnDisplay(II)Z

    move-result p0

    if-nez p0, :cond_9

    .line 414
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 417
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 414
    const-string p2, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: cannot start profile user visible when its parent is not visible in that display"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_9
    return v4

    :cond_a
    return v1

    .line 408
    :cond_b
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 410
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 408
    const-string/jumbo p2, "startUser(%d, %d, %s, %d) failed: cannot start profile user in foreground"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 424
    :cond_c
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_e

    .line 425
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/UserVisibilityMediator;->isUserAssignedToDisplayOnStartLocked(II)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 426
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_d

    .line 427
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "full user %d is already visible on display %d"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return v3

    :cond_e
    :goto_1
    if-nez v2, :cond_10

    if-nez p4, :cond_10

    if-eqz v5, :cond_f

    .line 433
    iget-boolean p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz p0, :cond_f

    goto :goto_2

    :cond_f
    return v1

    :cond_10
    :goto_2
    return v4
.end method

.method public getVisibleUsers()Landroid/util/IntArray;
    .locals 5

    .line 955
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 956
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 957
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 958
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 959
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 960
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCurrentUserLocked(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    .line 1161
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final isCurrentUserOrRunningProfileOfCurrentUser(I)Z
    .locals 5

    .line 1168
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq p1, v2, :cond_4

    .line 1170
    :try_start_0
    iget v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v3, p1, :cond_1

    .line 1174
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1176
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 1177
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-eq p1, p0, :cond_2

    const/4 p0, -0x1

    if-ne p1, p0, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    monitor-exit v0

    return v1

    .line 1171
    :cond_4
    :goto_0
    monitor-exit v0

    return v1

    .line 1179
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isFullUserVisibleOnBackgroundLocked(II)Z
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    return v1

    .line 807
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    const/16 v0, -0x2710

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isParentVisibleOnDisplay(II)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 754
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    move-result p0

    return p0
.end method

.method public final isStartedVisibleProfileLocked(I)Z
    .locals 1

    .line 1184
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v0, -0x2710

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    .line 1185
    invoke-static {p1, p0}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result p0

    return p0
.end method

.method public final isUserAssignedToDisplayOnStartLocked(I)Z
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserAssignedToDisplayOnStartLocked(II)Z
    .locals 2

    .line 729
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 731
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 732
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 731
    const-string p2, "isUserAssignedToDisplayOnStartLocked(%d, %d): called when mUsersAssignedToDisplayOnStart is null"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 736
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isUserVisible(I)Z
    .locals 4

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 697
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 710
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 711
    :try_start_2
    invoke-static {p1, v2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 712
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserVisibilityMediator;->isUserAssignedToDisplayOnStartLocked(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 714
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserAssignedToDisplayOnStartLocked(I)Z

    move-result p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_1
    move-exception p0

    .line 710
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 715
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public isUserVisible(II)Z
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    .line 770
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 779
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_4

    .line 780
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_3

    .line 781
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v0, "isUserVisible(%d, %d): returning false as device does not support visible background users"

    .line 782
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 781
    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v1

    .line 787
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 791
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 792
    :try_start_2
    invoke-static {p1, v2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 793
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isFullUserVisibleOnBackgroundLocked(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 795
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isFullUserVisibleOnBackgroundLocked(II)Z

    move-result p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_1
    move-exception p0

    .line 791
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 796
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public onSystemUserVisibilityChanged(Z)V
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    return-void
.end method

.method public final resolveProfileGroupId(IIZ)I
    .locals 0

    .line 0
    if-eqz p3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, -0x2710

    if-ne p2, p0, :cond_1

    return p1

    :cond_1
    return p2
.end method

.method public final unassignUserFromAllDisplaysOnStopLocked(I)V
    .locals 4

    .line 650
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 651
    sget-object v1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Removing %d from mStartedVisibleProfileGroupIds (%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 655
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 656
    sget-object v1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Removing %d from list of invisible profiles"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 660
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 667
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Removing user %d from mUsersOnDisplaysMap (%s)"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 673
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    .line 674
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-ne v1, p1, :cond_5

    .line 675
    sget-boolean v1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v1, :cond_4

    .line 676
    sget-object v1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 677
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 676
    const-string v3, "Removing display %d from mExtraDisplaysAssignedToUsers (%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public unassignUserFromDisplayOnStop(I)V
    .locals 3

    .line 634
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 635
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unassignUserFromDisplayOnStop(%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object v1

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->unassignUserFromAllDisplaysOnStopLocked(I)V

    .line 643
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object p1

    .line 644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V

    return-void

    :catchall_0
    move-exception p0

    .line 644
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final validateUserStartMode(I)V
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 1195
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user start mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
