.class public Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;
.super Landroid/telephony/PhoneStateListener;
.source "ComprehensiveCountryDetector.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->-$$Nest$fgetmCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->-$$Nest$fputmCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;I)V

    .line 457
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->-$$Nest$fgetmTotalCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->-$$Nest$fputmTotalCountServiceStateChanges(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;I)V

    .line 459
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-static {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->-$$Nest$misNetworkCountryCodeAvailable(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 462
    :cond_0
    sget-boolean v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CountryDetector"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-static {p0, v2, v2}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->-$$Nest$mdetectCountry(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    return-void
.end method
