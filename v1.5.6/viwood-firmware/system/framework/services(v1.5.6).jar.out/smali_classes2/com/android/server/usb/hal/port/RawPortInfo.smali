.class public final Lcom/android/server/usb/hal/port/RawPortInfo;
.super Ljava/lang/Object;
.source "RawPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/usb/hal/port/RawPortInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public complianceWarnings:[I

.field public contaminantDetectionStatus:I

.field public contaminantProtectionStatus:I

.field public currentDataRole:I

.field public currentMode:I

.field public currentPowerRole:I

.field public displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

.field public plugState:I

.field public final portId:Ljava/lang/String;

.field public powerBrickConnectionStatus:I

.field public powerTransferLimited:Z

.field public supportedAltModes:I

.field public final supportedContaminantProtectionModes:I

.field public final supportedModes:I

.field public final supportsComplianceWarnings:Z

.field public supportsEnableContaminantPresenceDetection:Z

.field public supportsEnableContaminantPresenceProtection:Z

.field public usbDataStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 164
    new-instance v0, Lcom/android/server/usb/hal/port/RawPortInfo$1;

    invoke-direct {v0}, Lcom/android/server/usb/hal/port/RawPortInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/usb/hal/port/RawPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    .line 108
    iput p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    .line 109
    iput p3, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    .line 110
    iput p4, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 111
    iput-boolean p5, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 112
    iput p6, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 113
    iput-boolean p7, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 114
    iput p8, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 115
    iput-boolean p9, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    .line 116
    iput-boolean p10, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 118
    iput p11, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    .line 119
    iput-boolean p12, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 121
    iput p13, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    .line 122
    iput p14, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    .line 123
    iput-boolean p15, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    move/from16 p1, p16

    .line 124
    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    move/from16 p1, p17

    .line 125
    iput-boolean p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsComplianceWarnings:Z

    move-object/from16 p1, p18

    .line 126
    iput-object p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->complianceWarnings:[I

    move/from16 p1, p19

    .line 127
    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->plugState:I

    move/from16 p1, p20

    .line 128
    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    move-object/from16 p1, p21

    .line 129
    iput-object p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 139
    iget-object p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 144
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 146
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 148
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 151
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsComplianceWarnings:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 156
    iget-object p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->complianceWarnings:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->plugState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 160
    iget-object p0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method
