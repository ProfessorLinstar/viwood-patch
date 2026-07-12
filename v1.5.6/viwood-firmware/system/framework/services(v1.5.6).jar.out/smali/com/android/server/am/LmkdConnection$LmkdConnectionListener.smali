.class public interface abstract Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;
.super Ljava/lang/Object;
.source "LmkdConnection.java"


# virtual methods
.method public abstract handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z
.end method

.method public abstract isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z
.end method

.method public abstract onConnect(Ljava/io/OutputStream;)Z
.end method

.method public abstract onDisconnect()V
.end method
