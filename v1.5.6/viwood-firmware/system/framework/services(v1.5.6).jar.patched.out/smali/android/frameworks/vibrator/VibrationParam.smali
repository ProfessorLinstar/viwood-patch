.class public final Landroid/frameworks/vibrator/VibrationParam;
.super Ljava/lang/Object;
.source "VibrationParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/frameworks/vibrator/VibrationParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Landroid/frameworks/vibrator/VibrationParam$1;

    invoke-direct {v0}, Landroid/frameworks/vibrator/VibrationParam$1;-><init>()V

    sput-object v0, Landroid/frameworks/vibrator/VibrationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/frameworks/vibrator/VibrationParam;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/frameworks/vibrator/VibrationParam-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/frameworks/vibrator/VibrationParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 109
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/frameworks/vibrator/VibrationParam;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/frameworks/vibrator/VibrationParam;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final _set(ILjava/lang/Object;)V
    .locals 0

    .line 122
    iput p1, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    .line 123
    iput-object p2, p0, Landroid/frameworks/vibrator/VibrationParam;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 116
    const-string/jumbo p0, "scale"

    return-object p0

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public describeContents()I
    .locals 1

    .line 93
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getTag()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/frameworks/vibrator/VibrationParam;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 102
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 103
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method

.method public getScale()Landroid/frameworks/vibrator/ScaleParam;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Landroid/frameworks/vibrator/VibrationParam;->_assertTag(I)V

    .line 44
    iget-object p0, p0, Landroid/frameworks/vibrator/VibrationParam;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/frameworks/vibrator/ScaleParam;

    return-object p0
.end method

.method public final getStability()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getTag()I
    .locals 0

    .line 33
    iget p0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object v1, Landroid/frameworks/vibrator/ScaleParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/frameworks/vibrator/ScaleParam;

    .line 84
    invoke-virtual {p0, v0, p1}, Landroid/frameworks/vibrator/VibrationParam;->_set(ILjava/lang/Object;)V

    return-void

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "union: unknown tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 69
    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
