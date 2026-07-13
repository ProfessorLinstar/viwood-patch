.class public Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;
.super Ljava/lang/Object;
.source "BinderLocationTimeZoneProvider.java"

# interfaces
.implements Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderBound()V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->-$$Nest$mhandleOnProviderBound(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;)V

    return-void
.end method

.method public onProviderUnbound()V
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    const-string/jumbo v0, "onProviderUnbound()"

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->handleTemporaryFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onReportTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->this$0:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->handleTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    return-void
.end method
