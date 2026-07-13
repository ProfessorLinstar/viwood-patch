.class public interface abstract Landroid/frameworks/vibrator/IVibratorController;
.super Ljava/lang/Object;
.source "IVibratorController.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 217
    const-string v2, "android$frameworks$vibrator$IVibratorController"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/frameworks/vibrator/IVibratorController;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract requestVibrationParams(IJLandroid/os/IBinder;)V
.end method
