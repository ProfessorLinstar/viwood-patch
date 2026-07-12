.class public final enum Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;
.super Ljava/lang/Enum;
.source "FrameworkStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

.field public static final enum ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

.field public static final enum RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;


# direct methods
.method public static synthetic $values()[Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;
    .locals 2

    .line 24
    sget-object v0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    sget-object v1, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    filled-new-array {v0, v1}, [Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    const-string v1, "ACQUIRE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    .line 26
    new-instance v0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    const-string v1, "RELEASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    .line 24
    invoke-static {}, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->$values()[Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->$VALUES:[Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;
    .locals 1

    .line 24
    const-class v0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->$VALUES:[Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    invoke-virtual {v0}, [Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    return-object v0
.end method
