.class public Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;
.super Ljava/lang/Object;
.source "UsbMidiBlockParser.java"


# instance fields
.field public mBlockItem:I

.field public mDescriptorSubtype:I

.field public mDescriptorType:I

.field public mGroupBlockId:I

.field public mGroupTerminal:I

.field public mGroupTerminalBlockType:I

.field public mLength:I

.field public mMaxInputBandwidth:I

.field public mMaxOutputBandwidth:I

.field public mMidiProtocol:I

.field public mNumGroupTerminals:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 3

    .line 83
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 85
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mLength:I

    const-string v2, "length"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000002L

    .line 86
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorType:I

    const-string v2, "descriptor_type"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000003L

    .line 88
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorSubtype:I

    const-string v2, "descriptor_subtype"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000004L

    .line 90
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupBlockId:I

    const-string v2, "group_block_id"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000005L

    .line 91
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminalBlockType:I

    const-string v2, "group_terminal_block_type"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000006L

    .line 93
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminal:I

    const-string v2, "group_terminal"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000007L

    .line 95
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mNumGroupTerminals:I

    const-string/jumbo v2, "num_group_terminals"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000008L

    .line 97
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mBlockItem:I

    const-string v2, "block_item"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000009L

    .line 98
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    const-string/jumbo v2, "midi_protocol"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x1050000000aL

    .line 99
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxInputBandwidth:I

    const-string/jumbo v2, "max_input_bandwidth"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x1050000000bL

    .line 101
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxOutputBandwidth:I

    const-string/jumbo p4, "max_output_bandwidth"

    invoke-virtual {p1, p4, v0, v1, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 104
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    .line 65
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mLength:I

    .line 66
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorType:I

    .line 67
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorSubtype:I

    .line 68
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupBlockId:I

    .line 69
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminalBlockType:I

    .line 70
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminal:I

    .line 71
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mNumGroupTerminals:I

    .line 72
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mBlockItem:I

    .line 73
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    .line 74
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxInputBandwidth:I

    .line 75
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result p1

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxOutputBandwidth:I

    .line 76
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mLength:I

    return p0
.end method
