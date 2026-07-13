.class public Lcom/android/server/power/stats/processor/MultiStateStats;
.super Ljava/lang/Object;
.source "MultiStateStats.java"


# instance fields
.field public mCompositeState:I

.field public final mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

.field public final mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public mTracking:Z


# direct methods
.method public static synthetic $r8$lambda$ezqcON2RlS29qz6G0aLoYDQdE4w(Lcom/android/server/power/stats/processor/MultiStateStats;[JLjava/lang/StringBuilder;[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->lambda$toString$1([JLjava/lang/StringBuilder;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gWef6G71JOA5KJFbpTLqAAxSIc4(Lcom/android/server/power/stats/processor/MultiStateStats;Lcom/android/modules/utils/TypedXmlSerializer;[J[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->lambda$writeXml$0(Lcom/android/modules/utils/TypedXmlSerializer;[J[I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/processor/MultiStateStats$Factory;I)V
    .locals 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 300
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget p1, p1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mSerialStateCount:I

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    return-void
.end method


# virtual methods
.method public copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p1, p1, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter;)V

    return-void
.end method

.method public getDimensionCount()I
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    return p0
.end method

.method public getStates()[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    return-object p0
.end method

.method public getStats([J[I)Z
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result p0

    return p0
.end method

.method public increment([JJ)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->incrementValues([JJ)V

    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    return-void
.end method

.method public final synthetic lambda$toString$1([JLjava/lang/StringBuilder;[I)V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v1, p3}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 472
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_1
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    .line 478
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_4

    .line 479
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    .line 481
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    aget v3, p3, v2

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_4
    const-string p0, ") "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final synthetic lambda$writeXml$0(Lcom/android/modules/utils/TypedXmlSerializer;[J[I)V
    .locals 0

    .line 379
    :try_start_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXmlForStates(Lcom/android/modules/utils/TypedXmlSerializer;[I[J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 381
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z
    .locals 11

    .line 420
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    new-array v2, v1, [J

    .line 422
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 424
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_0
    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 426
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "stats"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide/16 v5, 0x0

    .line 427
    invoke-static {v2, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    .line 429
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v6, v3, :cond_5

    .line 431
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 432
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 435
    :try_start_0
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v8, :cond_2

    if-lt v8, v1, :cond_1

    goto :goto_2

    .line 445
    :cond_1
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v9

    aput-wide v9, v2, v8

    goto :goto_3

    .line 441
    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "State index out of bounds: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiStateStats"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception p0

    .line 437
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected index syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 447
    :cond_3
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 448
    iget-object v10, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v10, v7, v8, v9}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->setStateInComposite(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    return v5

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 455
    :cond_5
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v4, v7}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setValues(I[J)V

    .line 458
    :cond_6
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    :cond_7
    return v4
.end method

.method public setState(IIJ)V
    .locals 2

    .line 328
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    new-array v1, v1, [J

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->updateValues([JJ)V

    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCompositeState:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->setStateInComposite(III)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCompositeState:I

    .line 333
    iget-object p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget p0, p0, p1

    invoke-virtual {p2, p0, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method public setStats([I[J)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result p0

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setValues(I[J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    new-array v1, v1, [J

    .line 467
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    new-instance v3, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats;[JLjava/lang/StringBuilder;)V

    invoke-static {v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v0

    new-array v0, v0, [J

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    new-instance v2, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats;Lcom/android/modules/utils/TypedXmlSerializer;[J)V

    invoke-static {v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 385
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 388
    :cond_0
    throw p0
.end method

.method public final writeXmlForStates(Lcom/android/modules/utils/TypedXmlSerializer;[I[J)V
    .locals 7

    .line 395
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 399
    const-string/jumbo v1, "stats"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    move v3, v2

    .line 401
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 402
    iget-object v4, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v4, v4, v3

    iget-boolean v5, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v5, :cond_1

    aget v5, p2, v3

    if-eqz v5, :cond_1

    .line 403
    iget-object v6, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_2
    :goto_1
    array-length p0, p3

    if-ge v2, p0, :cond_4

    .line 408
    aget-wide v3, p3, v2

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_3

    .line 409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-wide v3, p3, v2

    invoke-interface {p1, v0, p0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 412
    :cond_4
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
