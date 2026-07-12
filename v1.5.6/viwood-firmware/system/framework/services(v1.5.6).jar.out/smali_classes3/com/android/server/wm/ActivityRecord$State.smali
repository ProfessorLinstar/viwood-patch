.class final enum Lcom/android/server/wm/ActivityRecord$State;
.super Ljava/lang/Enum;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/ActivityRecord$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum FINISHING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum PAUSED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum PAUSING:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum RESUMED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum STARTED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum STOPPED:Lcom/android/server/wm/ActivityRecord$State;

.field public static final enum STOPPING:Lcom/android/server/wm/ActivityRecord$State;


# direct methods
.method public static synthetic $values()[Lcom/android/server/wm/ActivityRecord$State;
    .locals 11

    .line 571
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v10, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    filled-new-array/range {v0 .. v10}, [Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 572
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    .line 573
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    .line 574
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 575
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "PAUSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 576
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 577
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "STOPPING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 578
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    .line 579
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "FINISHING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    .line 580
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "DESTROYING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    .line 581
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "DESTROYED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    .line 582
    new-instance v0, Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "RESTARTING_PROCESS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    .line 571
    invoke-static {}, Lcom/android/server/wm/ActivityRecord$State;->$values()[Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityRecord$State;->$VALUES:[Lcom/android/server/wm/ActivityRecord$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 571
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$State;
    .locals 1

    .line 571
    const-class v0, Lcom/android/server/wm/ActivityRecord$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord$State;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/ActivityRecord$State;
    .locals 1

    .line 571
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->$VALUES:[Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0}, [Lcom/android/server/wm/ActivityRecord$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/ActivityRecord$State;

    return-object v0
.end method
