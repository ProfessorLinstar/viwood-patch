.class public interface abstract Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
.super Ljava/lang/Object;
.source "RemotePrintService.java"


# virtual methods
.method public abstract onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
.end method

.method public abstract onPrintersAdded(Ljava/util/List;)V
.end method

.method public abstract onPrintersRemoved(Ljava/util/List;)V
.end method

.method public abstract onServiceDied(Lcom/android/server/print/RemotePrintService;)V
.end method
