.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "WndSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2$1;->this$2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2$1;->this$2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2;

    .line 2
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2$1;->this$2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2;

    .line 5
    iget-boolean p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    const-string v0, "power_saver"

    .line 6
    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Z)V

    .line 7
    sget-object p1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->updateDisplaySize()V

    :cond_0
    return-void
.end method
