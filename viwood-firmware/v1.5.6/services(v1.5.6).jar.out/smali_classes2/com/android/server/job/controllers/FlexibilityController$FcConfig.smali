.class public Lcom/android/server/job/controllers/FlexibilityController$FcConfig;
.super Ljava/lang/Object;
.source "FlexibilityController.java"


# static fields
.field static final DEFAULT_DEADLINE_PROXIMITY_LIMIT_MS:J = 0xdbba0L

.field public static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

.field public static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

.field static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_MS:J = 0x5265c00L

.field public static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

.field static final DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field static final DEFAULT_UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J = 0xf731400L

.field static final KEY_APPLIED_CONSTRAINTS:Ljava/lang/String; = "fc_applied_constraints"


# instance fields
.field public APPLIED_CONSTRAINTS:I

.field public DEADLINE_PROXIMITY_LIMIT_MS:J

.field public final FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

.field public final FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

.field public FALLBACK_FLEXIBILITY_DEADLINE_MS:J

.field public final FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

.field public MAX_RESCHEDULED_DEADLINE_MS:J

.field public MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

.field public PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

.field public RESCHEDULED_JOB_DEADLINE_MS:J

.field public UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

.field public mShouldReevaluateConstraints:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/FlexibilityController$FcConfig;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/FlexibilityController$FcConfig;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/job/controllers/FlexibilityController$FcConfig;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 14

    .line 1180
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 1181
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 1184
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 1187
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    const-wide/32 v4, 0x36ee80

    const/16 v6, 0x1f4

    .line 1191
    invoke-virtual {v0, v6, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v4, 0x1499700

    const/16 v7, 0x190

    .line 1192
    invoke-virtual {v0, v7, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v4, 0x2932e00

    const/16 v8, 0x12c

    .line 1193
    invoke-virtual {v0, v8, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v4, 0x5265c00

    const/16 v9, 0xc8

    .line 1194
    invoke-virtual {v0, v9, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v4, 0xa4cb800

    const/16 v10, 0x64

    .line 1195
    invoke-virtual {v0, v10, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    const/4 v0, 0x5

    .line 1196
    invoke-virtual {v1, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x4

    .line 1197
    invoke-virtual {v1, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x3

    .line 1198
    invoke-virtual {v1, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x2

    .line 1199
    invoke-virtual {v1, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v11, 0x1

    .line 1200
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    const-wide/16 v12, 0x0

    .line 1202
    invoke-virtual {v2, v6, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v12, 0x2bf20

    .line 1204
    invoke-virtual {v2, v7, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v12, 0x1d4c0

    .line 1206
    invoke-virtual {v2, v8, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v12, 0xea60

    .line 1208
    invoke-virtual {v2, v9, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1210
    invoke-virtual {v2, v10, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1211
    filled-new-array {v11, v5, v4, v0}, [I

    move-result-object v0

    .line 1212
    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x21

    const/16 v1, 0x32

    const/16 v2, 0x3c

    const/16 v4, 0x4b

    .line 1213
    filled-new-array {v0, v1, v2, v4}, [I

    move-result-object v0

    .line 1214
    invoke-virtual {v3, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x46

    const/16 v5, 0x50

    .line 1215
    filled-new-array {v1, v2, v0, v5}, [I

    move-result-object v6

    .line 1216
    invoke-virtual {v3, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1217
    filled-new-array {v1, v2, v0, v5}, [I

    move-result-object v0

    .line 1218
    invoke-virtual {v3, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x41

    const/16 v1, 0x55

    const/16 v2, 0x37

    .line 1219
    filled-new-array {v2, v0, v4, v1}, [I

    move-result-object v0

    .line 1220
    invoke-virtual {v3, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 6

    .line 1268
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1147
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 1230
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    const-wide/32 v0, 0xdbba0

    .line 1232
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    const-wide/32 v0, 0x5265c00

    .line 1234
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    const-wide/32 v2, 0xea60

    .line 1235
    iput-wide v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 1241
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    const-wide/32 v2, 0x36ee80

    .line 1243
    iput-wide v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    .line 1245
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    const-wide/32 v0, 0xf731400

    .line 1250
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    .line 1255
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 1259
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 1265
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    move v0, p1

    .line 1271
    :goto_0
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1272
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 1273
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    .line 1274
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 1272
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 1276
    :goto_1
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1277
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 1278
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1279
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 1277
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p1

    .line 1282
    :goto_2
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1284
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 1286
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    .line 1288
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 1284
    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1290
    :cond_2
    :goto_3
    sget-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 1291
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 1292
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1293
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1291
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 1584
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1585
    const-class v0, Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    const-string v0, ":"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1589
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fc_applied_constraints"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 1590
    const-string v0, "("

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1591
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    if-eqz v0, :cond_0

    .line 1592
    invoke-static {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    goto :goto_0

    .line 1594
    :cond_0
    const-string/jumbo v0, "nothing"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1596
    :goto_0
    const-string v0, ")"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fc_flexibility_deadline_proximity_limit_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1598
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fc_fallback_flexibility_deadline_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1599
    const-string v0, "fc_fallback_flexibility_deadlines"

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1600
    const-string v0, "fc_fallback_flexibility_deadline_scores"

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1601
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1602
    const-string v0, "fc_fallback_flexibility_deadline_additional_score_time_factors"

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1603
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1604
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 1605
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1604
    const-string v1, "fc_min_time_between_flexibility_alarms_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1605
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1606
    const-string v0, "fc_percents_to_drop_flexible_constraints"

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 1607
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1608
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fc_rescheduled_job_deadline_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1609
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fc_max_rescheduled_deadline_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1610
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "fc_unseen_constraint_grace_period_ms"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    .line 1611
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1613
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final parsePercentToDropKeyValueString(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1414
    new-instance v4, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {v4, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    const/4 v5, 0x0

    move-object/from16 v0, p1

    .line 1416
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1418
    const-string v6, "JobScheduler.Flex"

    const-string v7, "Bad percent to drop key value string given"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1420
    invoke-virtual {v4, v5}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x1f4

    .line 1423
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/16 v7, 0x190

    .line 1424
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    const/16 v9, 0x12c

    .line 1425
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/16 v11, 0xc8

    .line 1426
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    const/16 v13, 0x64

    .line 1427
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    .line 1430
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 1429
    invoke-virtual {v4, v15, v5}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object v15

    move/from16 p1, v13

    .line 1432
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1431
    invoke-virtual {v4, v13, v5}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object v13

    move/from16 v16, v11

    .line 1434
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 1433
    invoke-virtual {v4, v11, v5}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object v11

    .line 1436
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1435
    invoke-virtual {v4, v9, v5}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object v9

    .line 1438
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1437
    invoke-virtual {v4, v7, v5}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object v1

    if-nez v15, :cond_0

    .line 1440
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, [I

    :cond_0
    invoke-virtual {v2, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v4, 0x190

    if-nez v13, :cond_1

    .line 1441
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, [I

    :cond_1
    invoke-virtual {v2, v4, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v4, 0x12c

    if-nez v11, :cond_2

    .line 1443
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, [I

    .line 1442
    :cond_2
    invoke-virtual {v2, v4, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v4, v16

    if-nez v9, :cond_3

    .line 1444
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, [I

    :cond_3
    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v4, p1

    if-nez v1, :cond_4

    .line 1445
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :cond_4
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1447
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v4, 0x190

    .line 1448
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v4, 0x12c

    .line 1449
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v10, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v4, 0xc8

    .line 1450
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v4, 0x64

    .line 1451
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v14, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public final parsePercentToDropString(Ljava/lang/String;)[I
    .locals 5

    .line 1456
    const-string p0, "JobScheduler.Flex"

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1459
    :cond_0
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const v1, 0x10000007

    .line 1460
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    new-array v2, v1, [I

    .line 1461
    array-length v3, p1

    if-eq v1, v3, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    .line 1465
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_4

    .line 1467
    :try_start_0
    aget-object v4, p1, v1

    .line 1468
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v3, :cond_2

    .line 1474
    const-string p1, "Percents to drop constraints were not in increasing order."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/16 v3, 0x64

    if-le v4, v3, :cond_3

    .line 1478
    const-string p1, "Found % over 100"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1470
    const-string v1, "Provided string was improperly formatted."

    invoke-static {p0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_4
    return-object v2

    :cond_5
    :goto_1
    return-object v0
.end method

.method public final parsePriorityToIntKeyValueString(Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .locals 16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1496
    new-instance v3, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {v3, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    move-object/from16 v0, p1

    .line 1498
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1500
    const-string v4, "JobScheduler.Flex"

    const-string v5, "Bad string given"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 1502
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x1f4

    .line 1505
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/16 v5, 0x190

    .line 1506
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const/16 v7, 0x12c

    .line 1507
    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const/16 v9, 0xc8

    .line 1508
    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/16 v11, 0x64

    .line 1509
    invoke-virtual {v1, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .line 1511
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1512
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    .line 1511
    invoke-virtual {v3, v13, v14}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1513
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 1514
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    .line 1513
    invoke-virtual {v3, v14, v15}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1515
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 1516
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 1515
    invoke-virtual {v3, v15, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1517
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 1518
    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 1517
    invoke-virtual {v3, v15, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1519
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 1520
    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1519
    invoke-virtual {v3, v15, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1522
    invoke-virtual {v1, v0, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x190

    .line 1523
    invoke-virtual {v1, v0, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x12c

    .line 1524
    invoke-virtual {v1, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1525
    invoke-virtual {v1, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1526
    invoke-virtual {v1, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v4, v13, :cond_1

    if-ne v6, v14, :cond_1

    if-ne v8, v5, :cond_1

    if-ne v10, v7, :cond_1

    if-eq v12, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public final parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z
    .locals 24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1544
    new-instance v3, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {v3, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    move-object/from16 v0, p1

    .line 1546
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1548
    const-string v4, "JobScheduler.Flex"

    const-string v5, "Bad string given"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 1550
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x1f4

    .line 1553
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    const/16 v6, 0x190

    .line 1554
    invoke-virtual {v1, v6}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    const/16 v9, 0x12c

    .line 1555
    invoke-virtual {v1, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    const/16 v12, 0xc8

    .line 1556
    invoke-virtual {v1, v12}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v13

    const/16 v15, 0x64

    .line 1557
    invoke-virtual {v1, v15}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    move/from16 p0, v15

    .line 1559
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move/from16 p1, v12

    move-wide/from16 v18, v13

    .line 1560
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    .line 1559
    invoke-virtual {v3, v15, v12, v13}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1561
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 1562
    invoke-virtual {v2, v6}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    .line 1561
    invoke-virtual {v3, v14, v0, v1}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1563
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v20, v7

    .line 1564
    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    .line 1563
    invoke-virtual {v3, v14, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1565
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v14, p1

    move-wide/from16 v22, v10

    .line 1566
    invoke-virtual {v2, v14}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    .line 1565
    invoke-virtual {v3, v8, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1567
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v11, p0

    .line 1568
    invoke-virtual {v2, v11}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    .line 1567
    invoke-virtual {v3, v10, v14, v15}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v10, p2

    const/16 v15, 0x1f4

    .line 1570
    invoke-virtual {v10, v15, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    const/16 v14, 0x190

    .line 1571
    invoke-virtual {v10, v14, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    const/16 v14, 0x12c

    .line 1572
    invoke-virtual {v10, v14, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    const/16 v14, 0xc8

    .line 1573
    invoke-virtual {v10, v14, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1574
    invoke-virtual {v10, v11, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    cmp-long v4, v4, v12

    if-nez v4, :cond_1

    cmp-long v0, v20, v0

    if-nez v0, :cond_1

    cmp-long v0, v22, v6

    if-nez v0, :cond_1

    cmp-long v0, v18, v8

    if-nez v0, :cond_1

    cmp-long v0, v16, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 1301
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const-wide/32 v1, 0x5265c00

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "fc_fallback_flexibility_deadline_ms"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "fc_applied_constraints"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v6, "fc_fallback_flexibility_deadline_additional_score_time_factors"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "fc_unseen_constraint_grace_period_ms"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_4
    const-string v6, "fc_percents_to_drop_flexible_constraints"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_5
    const-string v6, "fc_flexibility_deadline_proximity_limit_ms"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "fc_fallback_flexibility_deadlines"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_7
    const-string v6, "fc_rescheduled_job_deadline_ms"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_8
    const-string v6, "fc_fallback_flexibility_deadline_scores"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_9
    const-string v6, "fc_max_rescheduled_deadline_ms"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    move v5, v4

    goto :goto_0

    :sswitch_a
    const-string v6, "fc_min_time_between_flexibility_alarms_ms"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_0

    :cond_a
    move v5, v0

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 1348
    :pswitch_0
    invoke-virtual {p1, p2, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    .line 1349
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmFallbackFlexibilityDeadlineMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_c

    .line 1350
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p0, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmFallbackFlexibilityDeadlineMs(Lcom/android/server/job/controllers/FlexibilityController;J)V

    return-void

    .line 1304
    :pswitch_1
    invoke-virtual {p1, p2, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p2}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmSupportedFlexConstraints(Lcom/android/server/job/controllers/FlexibilityController;)I

    move-result p2

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    .line 1306
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmAppliedConstraints(Lcom/android/server/job/controllers/FlexibilityController;)I

    move-result p1

    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    if-eq p1, p2, :cond_c

    .line 1307
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmAppliedConstraints(Lcom/android/server/job/controllers/FlexibilityController;I)V

    .line 1308
    iput-boolean v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    .line 1309
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmAppliedConstraints(Lcom/android/server/job/controllers/FlexibilityController;)I

    move-result p1

    if-eqz p1, :cond_b

    .line 1310
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v4}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmFlexibilityEnabled(Lcom/android/server/job/controllers/FlexibilityController;Z)V

    .line 1311
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p2, p1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 1312
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/PrefetchController;->registerPrefetchChangedListener(Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;)V

    .line 1313
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmSpecialAppTracker(Lcom/android/server/job/controllers/FlexibilityController;)Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mstartTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    return-void

    .line 1315
    :cond_b
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmFlexibilityEnabled(Lcom/android/server/job/controllers/FlexibilityController;Z)V

    .line 1316
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p2, p1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 1317
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/PrefetchController;->unRegisterPrefetchChangedListener(Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;)V

    .line 1318
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmSpecialAppTracker(Lcom/android/server/job/controllers/FlexibilityController;)Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mstopTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    return-void

    .line 1373
    :pswitch_2
    invoke-virtual {p1, p2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    sget-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    .line 1372
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1376
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmFallbackFlexibilityAdditionalScoreTimeFactors(Lcom/android/server/job/controllers/FlexibilityController;Landroid/util/SparseLongArray;)V

    .line 1378
    iput-boolean v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_3
    const-wide/32 v0, 0xf731400

    .line 1394
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    .line 1395
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmUnseenConstraintGracePeriodMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_c

    .line 1396
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmUnseenConstraintGracePeriodMs(Lcom/android/server/job/controllers/FlexibilityController;J)V

    .line 1397
    iput-boolean v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    .line 1402
    :pswitch_4
    invoke-virtual {p1, p2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    .line 1401
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropKeyValueString(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1405
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmPercentsToDropConstraints(Lcom/android/server/job/controllers/FlexibilityController;Landroid/util/SparseArray;)V

    .line 1406
    iput-boolean v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_5
    const-wide/32 v0, 0xdbba0

    .line 1340
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    .line 1341
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_c

    .line 1342
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;J)V

    .line 1343
    iput-boolean v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    .line 1355
    :pswitch_6
    invoke-virtual {p1, p2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    sget-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    .line 1354
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1358
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmFallbackFlexibilityDeadlines(Lcom/android/server/job/controllers/FlexibilityController;Landroid/util/SparseLongArray;)V

    .line 1359
    iput-boolean v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_7
    const-wide/32 v0, 0x36ee80

    .line 1324
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    .line 1325
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmRescheduledJobDeadline(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_c

    .line 1326
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmRescheduledJobDeadline(Lcom/android/server/job/controllers/FlexibilityController;J)V

    .line 1327
    iput-boolean v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    .line 1364
    :pswitch_8
    invoke-virtual {p1, p2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    .line 1363
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePriorityToIntKeyValueString(Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1367
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmFallbackFlexibilityDeadlineScores(Lcom/android/server/job/controllers/FlexibilityController;Landroid/util/SparseIntArray;)V

    .line 1368
    iput-boolean v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    .line 1332
    :pswitch_9
    invoke-virtual {p1, p2, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    .line 1333
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmMaxRescheduledDeadline(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_c

    .line 1334
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmMaxRescheduledDeadline(Lcom/android/server/job/controllers/FlexibilityController;J)V

    .line 1335
    iput-boolean v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_a
    const-wide/32 v0, 0xea60

    .line 1383
    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 1384
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmMinTimeBetweenFlexibilityAlarmsMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_c

    .line 1386
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fputmMinTimeBetweenFlexibilityAlarmsMs(Lcom/android/server/job/controllers/FlexibilityController;J)V

    .line 1387
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    .line 1388
    invoke-virtual {p1, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    .line 1389
    iput-boolean v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    :cond_c
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x777ea8fd -> :sswitch_a
        -0x5dcd0a55 -> :sswitch_9
        -0x2f1814d9 -> :sswitch_8
        -0x2035877c -> :sswitch_7
        0x5fa939a -> :sswitch_6
        0x22a4f609 -> :sswitch_5
        0x274d921d -> :sswitch_4
        0x2c861644 -> :sswitch_3
        0x6c3c0f71 -> :sswitch_2
        0x6c903af2 -> :sswitch_1
        0x71a3d7ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
