.class public Lcom/android/server/location/gnss/GnssListenerMultiplexer$2;
.super Ljava/lang/Object;
.source "GnssListenerMultiplexer.java"

# interfaces
.implements Lcom/android/server/location/injector/PackageResetHelper$Responder;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$2;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isResetableForPackage(Ljava/lang/String;)Z
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$2;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->-$$Nest$misResetableForPackage(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onPackageReset(Ljava/lang/String;)V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$2;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->-$$Nest$monPackageReset(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/String;)V

    return-void
.end method
