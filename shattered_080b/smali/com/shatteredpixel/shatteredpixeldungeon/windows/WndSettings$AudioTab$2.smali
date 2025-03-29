.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;
.source "WndSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->onClick()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    sget-object v1, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/audio/Music;->enable(Z)V

    const-string v1, "music"

    .line 4
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Z)V

    return-void
.end method
