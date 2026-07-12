.class public Lcom/android/server/power/stats/PowerStatsSpan$1;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "PowerStatsSpan.java"


# instance fields
.field public final synthetic val$sectionType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 456
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsSpan$1;->val$sectionType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported PowerStatsStore section type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$1;->val$sectionType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 0
    return-void
.end method
