.class public Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;
.super Ljava/lang/Object;
.source "ArtStatsLogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(JIILjava/lang/String;IJIILjava/lang/String;)V
    .locals 19

    .line 284
    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->-$$Nest$sfgetCOMPILE_FILTER_MAP()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->-$$Nest$sfgetCOMPILATION_REASON_MAP()Ljava/util/Map;

    move-result-object v0

    .line 290
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->-$$Nest$sfgetISA_MAP()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p11

    .line 298
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v2, 0x14c

    const/4 v10, 0x1

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v11, p6

    move-wide/from16 v12, p7

    move/from16 v14, p9

    move/from16 v15, p10

    .line 284
    invoke-static/range {v2 .. v18}, Lcom/android/internal/art/ArtStatsLog;->write(IJIIIJIIJIIIII)V

    return-void
.end method
