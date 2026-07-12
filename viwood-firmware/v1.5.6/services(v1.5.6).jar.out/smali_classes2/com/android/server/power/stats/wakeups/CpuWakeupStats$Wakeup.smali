.class final Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
.super Ljava/lang/Object;
.source "CpuWakeupStats.java"


# static fields
.field public static final sIrqPattern:Ljava/util/regex/Pattern;


# instance fields
.field public mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

.field public mElapsedMillis:J

.field public mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

.field public mType:I

.field public mUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 547
    const-string v0, "^(\\-?\\d+)\\s+(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->sIrqPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(I[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;JJLandroid/util/SparseBooleanArray;)V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    .line 570
    iput-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 571
    iput-wide p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 572
    iput-wide p5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mUptimeMillis:J

    .line 573
    iput-object p7, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static parseWakeup(Ljava/lang/String;JJLcom/android/server/power/stats/wakeups/IrqDeviceMap;)Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;
    .locals 16

    .line 578
    const-string v0, ":"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    const/4 v3, 0x0

    aget-object v0, v1, v3

    const-string v4, "Abort"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 586
    :cond_0
    array-length v0, v1

    new-array v4, v0, [Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 587
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 589
    array-length v5, v1

    const/4 v6, 0x1

    move v7, v3

    move v8, v7

    move v9, v6

    :goto_0
    const/4 v0, -0x1

    if-ge v7, v5, :cond_7

    aget-object v10, v1, v7

    .line 590
    sget-object v11, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->sIrqPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 591
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 595
    :try_start_0
    invoke-virtual {v11, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    .line 596
    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v13, :cond_1

    move v9, v14

    :cond_1
    add-int/lit8 v11, v8, 0x1

    .line 606
    new-instance v14, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    invoke-direct {v14, v13, v10}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;-><init>(ILjava/lang/String;)V

    aput-object v14, v4, v8

    move-object/from16 v13, p5

    .line 608
    invoke-virtual {v13, v10}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->getSubsystemsForDevice(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    move v10, v3

    move v14, v10

    .line 611
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_4

    .line 612
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->stringToKnownSubsystem(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v0, :cond_2

    .line 616
    invoke-virtual {v12, v15, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v14, v6

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move v14, v3

    :cond_4
    if-nez v14, :cond_5

    .line 622
    invoke-virtual {v12, v0, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_5
    move v8, v11

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v13, p5

    .line 602
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception while parsing device names from part: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CpuWakeupStats.Wakeup"

    invoke-static {v11, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_6
    move-object/from16 v13, p5

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    if-nez v8, :cond_8

    return-object v2

    .line 629
    :cond_8
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ne v1, v6, :cond_9

    invoke-virtual {v12, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object v2

    .line 634
    :cond_9
    new-instance v5, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    move-wide/from16 v10, p3

    move v6, v9

    move-wide/from16 v8, p1

    invoke-direct/range {v5 .. v12}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;-><init>(I[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;JJLandroid/util/SparseBooleanArray;)V

    return-object v5

    :cond_a
    :goto_3
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakeup{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mElapsedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 644
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mResponsibleSubsystems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
