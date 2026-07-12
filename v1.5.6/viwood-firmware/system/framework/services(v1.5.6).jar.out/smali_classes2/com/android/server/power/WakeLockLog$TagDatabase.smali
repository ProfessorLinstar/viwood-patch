.class public Lcom/android/server/power/WakeLockLog$TagDatabase;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# instance fields
.field public mArray:[Lcom/android/server/power/WakeLockLog$TagData;

.field public mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

.field public final mInvalidIndex:I

.field public final mMaxArraySize:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;)V
    .locals 2

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getTagDatabaseSize()I

    move-result v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mMaxArraySize:I

    .line 1172
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getTagDatabaseStartingSize()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1173
    new-array p1, p1, [Lcom/android/server/power/WakeLockLog$TagData;

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    .line 1174
    iput v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    return-void
.end method

.method public static updateTagTime(Lcom/android/server/power/WakeLockLog$TagData;J)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1323
    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;
    .locals 11

    .line 1266
    new-instance v0, Lcom/android/server/power/WakeLockLog$TagData;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/WakeLockLog$TagData;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    const/4 p2, 0x0

    const/4 v1, 0x0

    move v3, p1

    move v5, v3

    move-object v4, p2

    move v2, v1

    .line 1267
    :goto_0
    iget-object v6, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v7, v6

    if-ge v2, v7, :cond_5

    .line 1268
    aget-object v6, v6, v2

    .line 1269
    invoke-virtual {v0, v6}, Lcom/android/server/power/WakeLockLog$TagData;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v6

    :cond_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_3

    if-eqz v4, :cond_2

    .line 1277
    iget-wide v7, v6, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    iget-wide v9, v4, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    :cond_2
    move v5, v2

    move-object v4, v6

    goto :goto_1

    :cond_3
    if-ne v3, p1, :cond_4

    move v3, v2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    return-object p2

    :cond_6
    if-ne v3, p1, :cond_7

    .line 1293
    array-length p2, v6

    iget p3, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mMaxArraySize:I

    if-ge p2, p3, :cond_7

    .line 1294
    array-length v3, v6

    mul-int/lit8 p2, v3, 0x2

    .line 1295
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1296
    new-array p2, p2, [Lcom/android/server/power/WakeLockLog$TagData;

    .line 1297
    iget-object p3, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    invoke-static {p3, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1298
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    :cond_7
    if-ne v3, p1, :cond_8

    .line 1305
    iget-object p2, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    if-eqz p2, :cond_8

    .line 1309
    invoke-interface {p2, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;->onIndexRemoved(I)V

    :cond_8
    if-eq v3, p1, :cond_9

    move v5, v3

    .line 1311
    :cond_9
    invoke-virtual {p0, v0, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase;->setToIndex(Lcom/android/server/power/WakeLockLog$TagData;I)V

    return-object v0
.end method

.method public getTag(I)Lcom/android/server/power/WakeLockLog$TagData;
    .locals 2

    if-ltz p1, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 1226
    :cond_0
    aget-object p0, v0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I
    .locals 0

    if-nez p1, :cond_0

    .line 1247
    iget p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    return p0

    :cond_0
    iget p0, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    return p0
.end method

.method public setCallback(Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;

    return-void
.end method

.method public final setToIndex(Lcom/android/server/power/WakeLockLog$TagData;I)V
    .locals 2

    if-ltz p2, :cond_2

    .line 1331
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, v0

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 1334
    :cond_0
    aget-object v1, v0, p2

    if-eqz v1, :cond_1

    .line 1337
    iget p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    iput p0, v1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    .line 1345
    :cond_1
    aput-object p1, v0, p2

    .line 1346
    iput p2, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    const-string v1, "Tag Database: size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v5, p0, v2

    add-int/lit8 v4, v4, 0x8

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 1190
    invoke-virtual {v5}, Lcom/android/server/power/WakeLockLog$TagData;->getByteSize()I

    move-result v6

    add-int/2addr v4, v6

    .line 1191
    iget-object v5, v5, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1193
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1197
    :cond_1
    const-string p0, ", entries: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1198
    const-string p0, ", Bytes used: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
