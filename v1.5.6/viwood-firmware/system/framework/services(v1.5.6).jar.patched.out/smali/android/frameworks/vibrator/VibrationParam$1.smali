.class public Landroid/frameworks/vibrator/VibrationParam$1;
.super Ljava/lang/Object;
.source "VibrationParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/frameworks/vibrator/VibrationParam;
    .locals 1

    .line 59
    new-instance p0, Landroid/frameworks/vibrator/VibrationParam;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/frameworks/vibrator/VibrationParam;-><init>(Landroid/os/Parcel;Landroid/frameworks/vibrator/VibrationParam-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroid/frameworks/vibrator/VibrationParam$1;->createFromParcel(Landroid/os/Parcel;)Landroid/frameworks/vibrator/VibrationParam;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/frameworks/vibrator/VibrationParam;
    .locals 0

    .line 63
    new-array p0, p1, [Landroid/frameworks/vibrator/VibrationParam;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroid/frameworks/vibrator/VibrationParam$1;->newArray(I)[Landroid/frameworks/vibrator/VibrationParam;

    move-result-object p0

    return-object p0
.end method
