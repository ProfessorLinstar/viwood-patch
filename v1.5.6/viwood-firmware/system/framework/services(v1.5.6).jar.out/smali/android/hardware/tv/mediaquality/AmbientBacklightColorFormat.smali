.class public final Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;
.super Ljava/lang/Object;
.source "AmbientBacklightColorFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;",
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
    new-instance v0, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 99
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->_tagString(I)Ljava/lang/String;

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

    .line 112
    iput p1, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->_tag:I

    .line 113
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 106
    const-string p0, "RGB888"

    return-object p0

    .line 108
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
    .locals 0

    .line 93
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public getRGB888()I
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->_assertTag(I)V

    .line 44
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
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
    iget p0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->_tag:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->_set(ILjava/lang/Object;)V

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
    .locals 0

    .line 69
    iget p2, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget p2, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->_tag:I

    if-eqz p2, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;->getRGB888()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
