.class final enum Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;
.super Ljava/lang/Enum;
.source "VibratorControlService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

.field public static final enum CLEAR:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

.field public static final enum PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

.field public static final enum PUSH:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;


# direct methods
.method public static synthetic $values()[Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;
    .locals 3

    .line 515
    sget-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    sget-object v1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PUSH:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    sget-object v2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->CLEAR:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 516
    new-instance v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    const-string v1, "PULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    new-instance v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    const-string v1, "PUSH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PUSH:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    new-instance v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    const-string v1, "CLEAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->CLEAR:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 515
    invoke-static {}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->$values()[Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->$VALUES:[Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 515
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;
    .locals 1

    .line 515
    const-class v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    return-object p0
.end method

.method public static values()[Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;
    .locals 1

    .line 515
    sget-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->$VALUES:[Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    invoke-virtual {v0}, [Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    return-object v0
.end method
