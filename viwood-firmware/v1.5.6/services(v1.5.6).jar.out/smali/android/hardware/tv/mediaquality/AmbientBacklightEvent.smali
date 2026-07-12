.class public final Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;
.super Ljava/lang/Object;
.source "AmbientBacklightEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;",
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

    .line 72
    new-instance v0, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/AmbientBacklightEvent-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    .line 133
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_tagString(I)Ljava/lang/String;

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

    .line 147
    iput p1, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_tag:I

    .line 148
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 141
    const-string/jumbo p0, "metadata"

    return-object p0

    .line 143
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

    .line 140
    :cond_1
    const-string p0, "enabled"

    return-object p0
.end method

.method public describeContents()I
    .locals 2

    .line 117
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getTag()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getMetadata()Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->describeContents(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 126
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 127
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method

.method public getEnabled()Z
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_assertTag(I)V

    .line 45
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getMetadata()Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_assertTag(I)V

    .line 60
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;

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

    .line 34
    iget p0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_tag:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 107
    sget-object v1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;

    .line 108
    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_set(ILjava/lang/Object;)V

    return-void

    .line 111
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

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 103
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 85
    iget v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_tag:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getMetadata()Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
