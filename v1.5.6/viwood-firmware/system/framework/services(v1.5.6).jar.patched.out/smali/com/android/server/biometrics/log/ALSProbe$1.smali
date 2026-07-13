.class public Lcom/android/server/biometrics/log/ALSProbe$1;
.super Ljava/lang/Object;
.source "ALSProbe.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/ALSProbe;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/ALSProbe;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe$1;->this$0:Lcom/android/server/biometrics/log/ALSProbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe$1;->this$0:Lcom/android/server/biometrics/log/ALSProbe;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-static {p0, p1}, Lcom/android/server/biometrics/log/ALSProbe;->-$$Nest$monNext(Lcom/android/server/biometrics/log/ALSProbe;F)V

    return-void
.end method
