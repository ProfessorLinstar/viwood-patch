.class public Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;
.super Ljava/lang/Object;
.source "PowerStatsCollector.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;


# instance fields
.field public mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

.field public final mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public final mVoltageSupplier:Ljava/util/function/IntSupplier;


# direct methods
.method public static synthetic $r8$lambda$-ZKAzyj1NdB_Q-Ya6UvyUD3H7sk(Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/Integer;
    .locals 0

    .line 307
    iget p0, p0, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/power/PowerStatsInternal;Ljava/util/function/IntSupplier;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 269
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mVoltageSupplier:Ljava/util/function/IntSupplier;

    return-void
.end method


# virtual methods
.method public final ensureEnergyConsumers()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 278
    new-array v0, v1, [Landroid/hardware/power/stats/EnergyConsumer;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    return-void

    .line 282
    :cond_1
    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    if-nez v0, :cond_2

    .line 284
    new-array v0, v1, [Landroid/hardware/power/stats/EnergyConsumer;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    :cond_2
    :goto_0
    return-void
.end method

.method public getConsumedEnergy([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 2

    .line 318
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 319
    invoke-virtual {p0, p1}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 321
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 323
    const-string p1, "PowerStatsCollector"

    const-string v0, "Could not obtain energy consumers from PowerStatsService"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnergyConsumerIds(I)[I
    .locals 6

    .line 291
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->ensureEnergyConsumers()V

    .line 293
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 294
    new-array p0, v1, [I

    return-object p0

    .line 297
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 299
    iget-byte v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v5, p1, :cond_1

    .line 300
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 304
    new-array p0, v1, [I

    return-object p0

    .line 307
    :cond_3
    new-instance p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_1
    if-ge v1, p0, :cond_4

    .line 311
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/power/stats/EnergyConsumer;

    iget v2, v2, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public getEnergyConsumerName(I)Ljava/lang/String;
    .locals 5

    .line 336
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->ensureEnergyConsumers()V

    .line 338
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 339
    iget v4, v3, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    if-ne v4, p1, :cond_0

    .line 340
    invoke-virtual {p0, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->sanitizeCustomPowerComponentName(Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported energy consumer ID "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerStatsCollector"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string/jumbo p0, "unsupported"

    return-object p0
.end method

.method public getVoltageMv()I
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mVoltageSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    return p0
.end method

.method public final sanitizeCustomPowerComponentName(Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/String;
    .locals 4

    .line 349
    iget-object p0, p1, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CUSTOM_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 353
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 356
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 357
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x20

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 359
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v2, 0x5f

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
