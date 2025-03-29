.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "Chasm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;->jumpConfirmed:Z

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 3
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->curAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lastAction:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->damageInterrupt:Z

    .line 6
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->next()V

    :cond_0
    return-void
.end method
