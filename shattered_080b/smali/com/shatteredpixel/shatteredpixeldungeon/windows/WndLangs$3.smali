.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$3;
.super Ljava/lang/Object;
.source "WndLangs.java"

# interfaces
.implements Lcom/watabou/noosa/Game$SceneChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCreate()V
    .locals 0

    return-void
.end method

.method public beforeCreate()V
    .locals 1

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->platform:Lcom/watabou/utils/PlatformSupport;

    invoke-virtual {v0}, Lcom/watabou/utils/PlatformSupport;->resetGenerators()V

    return-void
.end method
