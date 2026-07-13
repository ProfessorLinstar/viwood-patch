.class public abstract Lcom/android/server/power/stats/PowerStatsSpan$Section;
.super Ljava/lang/Object;
.source "PowerStatsSpan.java"


# instance fields
.field public final mType:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/power/stats/PowerStatsSpan$Section;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Section;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public abstract write(Lcom/android/modules/utils/TypedXmlSerializer;)V
.end method
